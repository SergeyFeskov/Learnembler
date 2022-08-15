unit ufTestPage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  TypesLib, Vcl.CheckLst, SubroutinesLib, ufTestExit;

type
  TfTestPage = class(TForm)
    pThName: TPanel;
    Panel2: TPanel;
    bPrev: TButton;
    bRet: TButton;
    bNext: TButton;
    pMuTest: TPanel;
    chgMuTest: TCheckListBox;
    lQuest: TLabel;
    bEnd: TButton;
    Panel1: TPanel;
    pMoTest: TPanel;
    rgMoTest: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure bNextClick(Sender: TObject);
    procedure bPrevClick(Sender: TObject);
    procedure bEndClick(Sender: TObject);
    procedure AddUserAnses;
    procedure ClearTest;
    procedure ChangeCurrTestView;
    procedure CreateTest(var Test : TTest);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bRetClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure WMGetSysCommand( var Message: TMessage );
       message WM_SYSCOMMAND;
  end;

var
  fTestPage: TfTestPage;
  QuestsNum : Integer;
  UserAnses : Array of TUserAns;
  TestDatFl : File of TTest;

implementation

uses
  ufTestMain, ufLogIn, ufTestResults;

var
  N : Integer;
  CurrTest : TTest;
  IsEnded : Boolean;

{$R *.dfm}

procedure TfTestPage.WMGetSysCommand( var Message: TMessage );
begin
   if ( Message.wParam = SC_MINIMIZE ) then
      Application.Minimize
   else
      inherited;
end;

procedure TfTestPage.bEndClick(Sender: TObject);
var
  UserRes : Byte;
  I : Integer;
  T: Integer;
  CurrTestUserStatAdr : TStatAdr;
begin
  AddUserAnses;
  IsEnded := True;
  pMuTest.Enabled := False;
  pMoTest.Enabled := False;

  UserRes := 0;
  Reset(TestDatFl);
  for I := Low(UserAnses) to High(UserAnses) do
  begin
    Read(TestDatFl, CurrTest);
    case CurrTest.TestType of
      ttMono:
      if CurrTest.MoRightAns = UserAnses[I].MoAns then
        Inc(UserRes, CurrTest.Level);
      ttMulti:
      if CurrTest.MuRightAns = UserAnses[I].MuAns then
        Inc(UserRes, CurrTest.Level);
    end;
  end;
  FindUserStat(UserStatStartAdr, TestFlDir, TestFlName, CurrTestUserStatAdr);
  if (CurrTestUserStatAdr <> Nil) then
  begin
    if (CurrTestUserStatAdr^.UserStat.Result < UserRes) then
      CurrTestUserStatAdr^.UserStat.Result := UserRes;
  end
  else
  begin
    New(CurrTestUserStatAdr);
    with CurrTestUserStatAdr^.UserStat do
    begin
      Theme := TestFlDir;
      SubTheme := TestFlName;
      Result := UserRes;
    end;
    CurrTestUserStatAdr^.NextAdr := UserStatStartAdr;
    UserStatStartAdr := CurrTestUserStatAdr;
  end;

  if N <> High(UserAnses) then
  begin
    Seek(TestDatFl, N);
    Read(TestDatFl, CurrTest);
  end;
  ChangeCurrTestView;

  bEnd.Visible := False;
  fTestResults.Show;
end;

procedure TfTestPage.ChangeCurrTestView;
var
  I : Integer;
begin
  case CurrTest.TestType of
    ttMono:
    begin
      rgMoTest.Items[CurrTest.MoRightAns-1] := '(правильный ответ) '+rgMoTest.Items[CurrTest.MoRightAns-1];
      if UserAnses[N].MoAns <> 0 then
        if CurrTest.MoRightAns = UserAnses[N].MoAns then
          pMoTest.Color := clLime
        else
          pMoTest.Color := clRed
      else
        pMoTest.Color := clYellow;
    end;

    ttMulti:
    begin
      for I := 1 to 5 do
        if I in CurrTest.MuRightAns then
          chgMuTest.Items[I-1] := '(правильный ответ) '+chgMuTest.Items[I-1];
      if UserAnses[N].MuAns <> [] then
        if CurrTest.MuRightAns = UserAnses[N].MuAns then
          chgMuTest.Color := clLime
        else
          chgMuTest.Color := clRed
      else
        chgMuTest.Color := clYellow;
    end;
  end;
end;

procedure TfTestPage.bNextClick(Sender: TObject);
var
  I : Integer;
begin
  if not IsEnded then
    AddUserAnses;
  ClearTest;

  Inc(N);
  if (N+1) = QuestsNum then
  begin
    bNext.Visible := False;
    if not IsEnded then
      bEnd.Visible := True;
  end;
  bPrev.Visible := True;

  CreateTest(CurrTest);
  if IsEnded then
    ChangeCurrTestView;
end;

procedure TfTestPage.CreateTest(var Test : TTest);
var
  I : Integer;
begin
  Read(TestDatFl, Test);
  lQuest.Caption := Test.Quest;
  case Test.TestType of
    ttMono:
    begin
      pMoTest.Visible := True;
      for I := 1 to 5 do
      begin
        rgMoTest.Items.Add(Test.MoAnsVars[I]);
      end;
      rgMoTest.ItemIndex := UserAnses[N].MoAns-1;
    end;
    ttMulti:
    begin
      pMuTest.Visible := True;
      for I := 1 to 5 do
      begin
        chgMuTest.Items.Add(Test.MuAnsVars[I]);
        if I in UserAnses[N].MuAns then
          chgMuTest.State[I-1] := cbChecked;
      end;
    end;
  end;
end;

procedure TfTestPage.AddUserAnses;
var
  I : Integer;
begin
  UserAnses[N].TestType := CurrTest.TestType;
  with UserAnses[N] do
  case TestType of
    ttMono:
      MoAns := rgMoTest.ItemIndex+1;
    ttMulti:
    begin
      MuAns := [];
      for I := 1 to 5 do
      if chgMuTest.Checked[I-1] then
        MuAns := MuAns+[I];
    end;
  end;
end;

procedure TfTestPage.ClearTest;
begin
  case CurrTest.TestType of
    ttMono:
    begin
      pMoTest.Visible := False;
      rgMoTest.Items.Clear;
    end;
    ttMulti:
    begin
      pMuTest.Visible := False;
      chgMuTest.Items.Clear;
    end;
  end;
end;

procedure TfTestPage.bPrevClick(Sender: TObject);
var
  I : Integer;
begin
  if not IsEnded then
    AddUserAnses;
  ClearTest;

  Dec(N);
  if N = 0 then
  begin
    bPrev.Visible := False;
  end;
  bEnd.Visible := False;
  bNext.Visible := True;

  Seek(TestDatFl, N);
  CreateTest(CurrTest);
  if IsEnded then
    ChangeCurrTestView;
end;

procedure TfTestPage.bRetClick(Sender: TObject);
begin
  Close;
end;

procedure TfTestPage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseFile(TestDatFl);
  pMuTest.Enabled := True;
  pMoTest.Enabled := True;

  pMoTest.Color := clBtnFace;
  chgMuTest.Color := clBtnFace;
  ClearTest;
  bPrev.Visible := False;
  bNext.Visible := True;
  bEnd.Visible := False;
  fTestMain.Show;
end;

procedure TfTestPage.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not IsEnded then
  begin
    fTestExit.ShowModal;
    if IsClosing then
      CanClose := True
    else
      CanClose := False;
  end;
end;

procedure TfTestPage.FormShow(Sender: TObject);
var
  TestFl : TextFile;
  TestsFl : File of TFullTest;
  TmpStr : String;
  TmpChar : Char;
  I : Integer;
  TmpTest : TTest;
  FTStartAdr, TmpAdr : TFullTestAdr;
  TmpMaxResult, TmpTestsNum : Byte;
  TmpFullTest : TFullTest;
begin
  AssignFile(TestDatFl,'Tests\'+TestFlDir+'\'+TestFlName+'.dat');

  if not FileExists('Tests\'+TestFlDir+'\'+TestFlName+'.dat') then
  begin
    AssignFile(TestFl, 'Tests\'+TestFlDir+'\'+TestFlName+'.txt');
    Reset(TestFl);
    TmpTestsNum := 0;
    TmpMaxResult := 0;
    Rewrite(TestDatFl);
    while not EOF(TestFl) do
    begin
      with TmpTest do
      begin
        Readln(TestFl, TmpStr);
        Level := StrToInt(TmpStr);
        Inc(TmpMaxResult, Level);
        Readln(TestFl, Quest);
        Readln(TestFl, TmpChar);
        case TmpChar of
          '0' : TestType := ttMono;
          '1' : TestType := ttMulti;
        end;

        case TestType of
          ttMono:
          begin
            for I := 1 to 5 do
              Readln(TestFl, MoAnsVars[I]);
            Readln(TestFl, TmpChar);
            MoRightAns := StrToInt(TmpChar);
          end;
          ttMulti:
          begin
            for I := 1 to 5 do
              Readln(TestFl, MuAnsVars[I]);
            Readln(TestFl, TmpStr);
            MuRightAns := [];
            for I := 1 to Length(TmpStr) do
            begin
              //MuRightAns := MuRightAns + [TmpStr[I-1]];
              MuRightAns := MuRightAns + [StrToInt(TmpStr[I])];
            end;
          end;
        end;
      end;
      Write(TestDatFl, TmpTest);
      Inc(TmpTestsNum);
    end;

    if FileExists('Tests\tests.dat') then
    begin
      FullTestsFromFile('Tests\tests.dat', FTStartAdr);
      FindFullTest(FTStartAdr, TestFlDir, TestFlName, TmpAdr);
      if TmpAdr <> Nil then
      begin
        TmpAdr^.FullTest.TestsNum := TmpTestsNum;
        TmpAdr^.FullTest.MaxResult := TmpMaxResult;
      end
      else
      begin
        New(TmpAdr);
        with TmpAdr^.FullTest do
        begin
          Theme := TestFlDir;
          SubTheme := TestFlName;
          TestsNum := TmpTestsNum;
          MaxResult := TmpMaxResult;
        end;
        TmpAdr^.NextAdr := FTStartAdr;
        FTStartAdr := TmpAdr;
      end;
      FullTestsToFile('Tests\tests.dat', FTStartAdr);
      Dispose(FTStartAdr);
    end
    else
    begin
      AssignFile(TestsFl, 'Tests\tests.dat');
      Rewrite(TestsFl);
      with TmpFullTest do
      begin
        Theme := TestFlDir;
        SubTheme := TestFlName;
        TestsNum := TmpTestsNum;
        MaxResult := TmpMaxResult;
      end;
      Write(TestsFl, TmpFullTest);
      CloseFile(TestsFl);
    end;
    CloseFile(TestFl);
  end;

  FullTestsFromFile('Tests\tests.dat', FTStartAdr);
  FindFullTest(FTStartAdr, TestFlDir, TestFlName, TmpAdr);
  QuestsNum := TmpAdr^.FullTest.TestsNum;
  SetLength(UserAnses, QuestsNum);
  for I := Low(UserAnses) to High(UserAnses) do
  begin
    UserAnses[I].MoAns := 0;
    UserAnses[I].MuAns := [];
  end;
  while FtStartAdr <> Nil do
  begin
    TmpAdr := FTStartAdr;
    FTStartAdr := FTStartAdr.NextAdr;
    Dispose(TmpAdr);
  end;


  pThName.Caption := TestFlName;
  Reset(TestDatFl);
  N := 0;
  CreateTest(CurrTest);

  if (N+1) = QuestsNum then
  begin
    bNext.Visible := False;
    bEnd.Visible := True;
  end;

  IsEnded := False;
end;

end.
