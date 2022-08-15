unit ufUserStat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, ufTestPage, TypesLib, ufTestMain,
  Vcl.StdCtrls;

type
  TfUserStat = class(TForm)
    sgStatTable: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sgStatTableDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUserStat: TfUserStat;

implementation

{$R *.dfm}

uses
  ufAccInfo, ufLogIn;

procedure TfUserStat.FormActivate(Sender: TObject);
var
  I, J : Integer;
  TestsFl : File of TFullTest;
  ResFl : File of TUserStat;
  TestStat : TUserStat;
  Test : TFullTest;
  IsFilled, IsThemeAdded : Boolean;
  Theme : Record
    ThemeName : String;
    StartPos, EndPos : Integer;
    SumResult : Integer;
    SubThemeNum : Integer;
  end;
  TmpDecimalRes : Integer;
  PassedNum, FailedNum, EmptyNum : Integer;
  TmpStatAdr : TStatAdr;
begin
  AssignFile(TestsFl, 'Tests\tests.dat');
  IsFilled := False;
  while not IsFilled do
  begin
    Reset(TestsFl);
    IsFilled := True;
    IsThemeAdded := False;
    while not EOF(TestsFl) do
    begin
      Read(TestsFl, Test);
      I := 1;
      while (I <= sgStatTable.RowCount-1) and not IsThemeAdded do
      begin
        if Test.Theme = sgStatTable.Cells[0, I] then
          IsThemeAdded := True;
        Inc(I);
      end;

      with sgStatTable, Theme do
        if not IsThemeAdded then
        begin
          IsFilled := False;
          ThemeName := Test.Theme;
          StartPos := RowCount-1;
          Cells[0, StartPos] := ThemeName;
          RowCount := RowCount+1;
          SubThemeNum := 1;
          Cells[0, StartPos+SubThemeNum] := IntToStr(SubThemeNum);
          Cells[1, StartPos+SubThemeNum] := Test.SubTheme;
          Cells[2, StartPos+SubThemeNum] := 'Не пройден';
          Cells[3, StartPos+SubThemeNum] := IntToStr(Test.MaxResult);
          RowCount := RowCount+1;
          SumResult := Test.MaxResult;
          while not EOF(TestsFl) do
          begin
            Read(TestsFl, Test);
            if Test.Theme = ThemeName then
            begin
              Inc(SubThemeNum);
              Cells[0, StartPos+SubThemeNum] := IntToStr(SubThemeNum);
              Cells[1, StartPos+SubThemeNum] := Test.SubTheme;
              Cells[2, StartPos+SubThemeNum] := 'Не пройден';
              Cells[3, StartPos+SubThemeNum] := IntToStr(Test.MaxResult);
              RowCount := RowCount+1;
              Inc(SumResult, Test.MaxResult);
            end;
          end;
          Cells[1, StartPos] := 'Кол-во тем: '+IntToStr(SubThemeNum);
          Cells[3, StartPos] := IntToStr(SumResult);
          TmpStatAdr := UserStatStartAdr;
          SumResult := 0;
          PassedNum := 0;
          FailedNum := 0;
          EmptyNum := SubThemeNum;
          while TmpStatAdr <> Nil do
          with TmpStatAdr^ do
          begin
            if UserStat.Theme = ThemeName then
            for I := 1 to SubThemeNum do
            if UserStat.SubTheme = Cells[1, StartPos+I] then
            begin
              Inc(SumResult, UserStat.Result);
              TmpDecimalRes := Round((UserStat.Result/StrToInt(Cells[3, StartPos+I]))*10);
              Cells[3, StartPos+I] := IntToStr(TmpDecimalRes)+' ('+IntToStr(UserStat.Result)+'/'+Cells[3, StartPos+I]+')';
              if TmpDecimalRes < 5 then
              begin
                Inc(FailedNum);
                Cells[2, StartPos+I] := 'Завален'
              end
              else
              begin
                Inc(PassedNum);
                Cells[2, StartPos+I] := 'Пройден';
              end;
              Dec(EmptyNum);
            end;
            TmpStatAdr := TmpStatAdr^.NextAdr;
          end;

          Cells[2, StartPos] := 'Пройдено: '+IntToStr(PassedNum)+#10+#13;
          Cells[2, StartPos] := Cells[2, StartPos]+'Завалено: '+IntToStr(FailedNum)+#10+#13;
          Cells[2, StartPos] := Cells[2, StartPos]+'Не пройдено: '+IntToStr(EmptyNum);
          TmpDecimalRes := Round((SumResult/StrToInt(Cells[3, StartPos]))*10);
          Cells[3, StartPos] := 'Суммарный балл за раздел: '+#10+#13+IntToStr(TmpDecimalRes)+' ('+IntToStr(SumResult)+'/'+Cells[3, StartPos]+')';
          for I := 1 to SubThemeNum do
          if Cells[2, StartPos+I] = 'Не пройден' then
            Cells[3, StartPos+I] := '0 (0/'+Cells[3, StartPos+I]+')';
        end;
      IsThemeAdded := False;
    end;
  end;
  CloseFile(TestsFl);
  sgStatTable.RowCount := sgStatTable.RowCount-1;
end;

procedure TfUserStat.FormClose(Sender: TObject; var Action: TCloseAction);
var
  I : Integer;
begin
  sgStatTable.RowCount := 2;
  sgStatTable.Rows[1].Clear;
  fAccInfo.Show;
end;

procedure TfUserStat.FormCreate(Sender: TObject);
begin
  with sgStatTable do
  begin
    Cells[0,0] := 'Раздел';
    ColWidths[0] := 150;
    Cells[1,0] := 'Тема';
    ColWidths[1] := 320;
    Cells[2,0] := 'Состояние теста';
    ColWidths[2] := 100;
    Cells[3,0] := 'Результат (по десятибальной системе)';
    ColWidths[3] := 200;
    RowHeights[0] := 15;
    DefaultDrawing := False;
  end;
end;

procedure TfUserStat.sgStatTableDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
 AText: string;
begin
 with sgStatTable, sgStatTable.Canvas do
 begin
   FillRect(Rect);
   AText := sgStatTable.Cells[ACol, ARow];
   if AText <> '' then
   begin
     DrawText(Handle, PChar(AText), -1, Rect, DT_CALCRECT or DT_WORDBREAK);
     if RowHeights[ARow] < Rect.Bottom - Rect.Top then
       RowHeights[ARow] := Rect.Bottom - Rect.Top;
     DrawText(Handle, PChar(AText), -1, Rect, DT_WORDBREAK);
   end;
 end;
end;
end.
