unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, ufTestPage, TypesLib, ufTestMain,
  Vcl.StdCtrls;

type
  TfTestResults = class(TForm)
    sgResTable: TStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sgResTableDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTestResults: TfTestResults;

implementation

{$R *.dfm}

var
  IsAnsRight, IsAnsExists : Array of Boolean;

procedure TfTestResults.FormActivate(Sender: TObject);
var
  I, J : Integer;
  Fl : File of TTest;
  Test : TTest;
begin
  SetLength(IsAnsRight, QuestsNum);
  SetLength(IsAnsExists, QuestsNum);
  sgResTable.RowCount := QuestsNum+1;
  AssignFile(Fl,'Tests\'+TestFlDir+'\'+TestFlName+'.dat');
  Reset(Fl);
  for I := 1 to QuestsNum do
  begin
    Read(Fl, Test);
    with sgResTable do
    begin
      case Test.TestType of
        ttMono:
        if UserAnses[I-1].MoAns <> 0 then
        begin
          IsAnsExists[I-1] := True;
          if UserAnses[I-1].MoAns = Test.MoRightAns then
            IsAnsRight[I-1] := True
          else
            IsAnsRight[I-1] := False;
        end
        else
          IsAnsExists[I-1] := False;

        ttMulti:
        if UserAnses[I-1].MuAns <> [] then
        begin
          IsAnsExists[I-1] := True;
          if UserAnses[I-1].MuAns = Test.MuRightAns then
            IsAnsRight[I-1] := True
          else
            IsAnsRight[I-1] := False;
        end
        else
          IsAnsExists[I-1] := False;
      end;

      Cells[0, I] := IntToStr(I);
      Cells[1, I] := Test.Quest;
      case Test.TestType of
        ttMono:
        begin
          Cells[2, I] := IntToStr(Test.MoRightAns)+') '+Test.MoAnsVars[Test.MoRightAns];
          if IsAnsExists[I-1] then
            Cells[3, I] := Char(UserAnses[I-1].MoAns+Ord('0'))+') '+Test.MoAnsVars[UserAnses[I-1].MoAns]
          else
            Cells[3, I] := '  -';
        end;
        ttMulti:
        begin
          Cells[2, I] := '';
          for J := 1 to 5 do
            if J in Test.MuRightAns then
            begin
              if Cells[2, I] <> '' then
                Cells[2, I] := Cells[2, I]+#10+#13;
              Cells[2, I] := Cells[2, I]+IntToStr(J)+') '+Test.MuAnsVars[J];
            end;
          if IsAnsExists[I-1] then
          begin
            Cells[3, I] := '';
            for J := 1 to 5 do
              if J in UserAnses[I-1].MuAns then
              begin
                if Cells[3, I] <> '' then
                  Cells[3, I] := Cells[3, I]+#10+#13;
                Cells[3, I] := Cells[3, I]+IntToStr(J)+') '+Test.MuAnsVars[J];
              end;
          end
          else
            Cells[3, I] := '  -';
        end;
      end;
      if IsAnsExists[I-1] then
        if IsAnsRight[I-1] then
        begin
          Cells[4, I] := 'Правильный';
          Cells[5, I] := IntToStr(Test.Level);
        end
        else
        begin
          Cells[4, I] := 'Неправильный';
          Cells[5, I] := '0';
        end
      else
      begin
        Cells[4, I] := 'Ответ не указан';
        Cells[5, I] := '  -';
      end;

    end;
  end;
end;

procedure TfTestResults.FormCreate(Sender: TObject);
begin
  with sgResTable do
  begin
    Cells[0,0] := '№';
    ColWidths[0] := 30;
    Cells[1,0] := 'Вопрос';
    ColWidths[1] := 360;
    Cells[2,0] := 'Правильный ответ';
    ColWidths[2] := 360;
    Cells[3,0] := 'Ваш ответ';
    ColWidths[3] := 354;
    Cells[4,0] := 'Состояние ответа';
    ColWidths[4] := 100;
    Cells[5,0] := 'Полученные баллы';
    ColWidths[5] := 100;
    RowHeights[0] := 15;
    DefaultDrawing := False;
  end;
end;

procedure TfTestResults.sgResTableDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
 AText: string;
begin
 with sgResTable, sgResTable.Canvas do
 begin
   if (ACol > FixedCols-1) and (ARow > FixedRows-1) then
    if IsAnsExists[ARow-1] then
      if IsAnsRight[ARow-1] then
        Brush.Color := clLime
      else
        Brush.Color := clRed
    else
      Brush.Color := clYellow;

   //Brush.Color := clBlue; // назначение цвета ячейки
   //MyStringGrid.Canvas.Font.Color := clWhite; // назначение цвета шрифта
   FillRect(Rect);
   AText := sgResTable.Cells[ACol, ARow];
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
