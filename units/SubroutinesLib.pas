Unit SubroutinesLib;

Interface

Uses
  Windows, System.SysUtils, TypesLib, Vcl.StdCtrls, Vcl.ExtCtrls;

Procedure UserStatToFile(const UserName : String; const StatStartAdr : TStatAdr);
Procedure FindUserStat(const StartAdr : TStatAdr; const TestTheme, TestSubTheme : String; var TestStatAdr : TStatAdr);
Procedure UserInfoToFile(const FileName : String; const UserInfo : TUserInfo);
Procedure DefineFileName(Sender: TObject; var FlDir, FlName : String);
Procedure FullTestsToFile(const FileName : String; const StartAdr : TFullTestAdr);
Procedure FullTestsFromFile(const FileName : String; var StartAdr : TFullTestAdr);
Procedure FindFullTest(const StartAdr : TFullTestAdr; const TestTheme, TestSubTheme : String; var TestAdr : TFullTestAdr);
Procedure CreateStatDSD(const User : TUserInfo; var StartAdr : TStatAdr);

Implementation
  Procedure UserStatToFile(const UserName : String; const StatStartAdr : TStatAdr);
  var
    TmpFl : File of TUserStat;
    TmpAdr : TStatAdr;
  begin
    TmpAdr := StatStartAdr;
    AssignFile(TmpFl, 'UsersStats\'+UserName+'.dat');
    Rewrite(TmpFl);
    while TmpAdr <> Nil do
    begin
      Write(TmpFl,TmpAdr^.UserStat);
      TmpAdr := TmpAdr^.NextAdr;
    end;
    CloseFile(TmpFl);
  end;

  Procedure FindUserStat(const StartAdr : TStatAdr; const TestTheme, TestSubTheme : String; var TestStatAdr : TStatAdr);
  var
    IsFound : Boolean;
    TmpAdr : TStatAdr;
  begin
    IsFound := False;
    TestStatAdr := Nil;
    TmpAdr := StartAdr;
    while (TmpAdr <> Nil) and not IsFound do
    begin
      with TmpAdr^.UserStat do
        if (TestTheme = Theme) and (TestSubTheme = SubTheme) then
        begin
          IsFound := True;
          TestStatAdr := TmpAdr;
        end;
      TmpAdr := TmpAdr.NextAdr;
    end;
  end;

  Procedure CreateStatDSD(const User : TUserInfo; var StartAdr : TStatAdr);
  var
    Fl : File of TUserStat;
    TmpStat : TUserStat;
    TmpStatAdr : TStatAdr;
  begin
    if FileExists('UsersStats/'+User.UserName+'.dat') then
    begin
      AssignFile(Fl, 'UsersStats/'+User.UserName+'.dat');
      Reset(Fl);
      StartAdr := Nil;
      while not EOF(Fl) do
      begin
        Read(Fl, TmpStat);
        if StartAdr = Nil then
        begin
          New(StartAdr);
          StartAdr^.UserStat := TmpStat;
          StartAdr^.NextAdr := Nil;
        end
        else
        begin
          New(TmpStatAdr);
          TmpStatAdr^.UserStat := TmpStat;
          TmpStatAdr^.NextAdr := StartAdr;
          StartAdr := TmpStatAdr;
        end;
      end;
    end;
  end;

  Procedure FindFullTest(const StartAdr : TFullTestAdr; const TestTheme, TestSubTheme : String; var TestAdr : TFullTestAdr);
  var
    IsFound : Boolean;
    TmpAdr : TFullTestAdr;
  begin
    IsFound := False;
    TestAdr := Nil;
    TmpAdr := StartAdr;
    while (TmpAdr <> Nil) and not IsFound do
    begin
      with TmpAdr^.FullTest do
        if (TestTheme = Theme) and (TestSubTheme = SubTheme) then
        begin
          IsFound := True;
          TestAdr := TmpAdr;
        end;
      TmpAdr := TmpAdr.NextAdr;
    end;
  end;

  Procedure FullTestsToFile(const FileName : String; const StartAdr : TFullTestAdr);
  var
    TmpFl : File of TFullTest;
    TmpAdr : TFullTestAdr;
  begin
    TmpAdr := StartAdr;
    AssignFile(TmpFl, FileName);
    Rewrite(TmpFl);
    while TmpAdr <> Nil do
    begin
      Write(TmpFl,TmpAdr^.FullTest);
      TmpAdr := TmpAdr^.NextAdr;
    end;
    CloseFile(TmpFl);
  end;

  Procedure FullTestsFromFile(const FileName : String; var StartAdr : TFullTestAdr);
  var
    TmpAdr : TFullTestAdr;
    Fl : File of TFullTest;
  begin
    AssignFile(Fl, FileName);
    Reset(Fl);
    if not EOF(Fl) then
    begin
      New(StartAdr);
      TmpAdr := StartAdr;
      Read(Fl, TmpAdr^.FullTest);
      TmpAdr^.NextAdr := Nil;
    end;

    while not EOF(Fl) do
    begin
      New(TmpAdr^.NextAdr);
      TmpAdr := TmpAdr^.NextAdr;
      TmpAdr^.NextAdr := Nil;
      Read(Fl, TmpAdr^.FullTest);
    end;
    CloseFile(Fl);
  end;

  Procedure UserInfoToFile(const FileName : String; const UserInfo : TUserInfo);
  var
    TmpFl, ChangeFl : File of TUserInfo;
    TmpEL : TUserInfo;
    IsLoaded : Boolean;
  begin
    IsLoaded := False;
    AssignFile(TmpFl,'temp.dat');
    Rewrite(TmpFl);
    if FileExists(FileName) then
    begin
      AssignFile(ChangeFl,FileName);
      Reset(ChangeFl);
      while not EOF(ChangeFl) do
      begin
        Read(ChangeFl,TmpEL);
        if TmpEl.UserName = UserInfo.UserName then
        begin
          IsLoaded := True;
          TmpEl := UserInfo;
        end;
        Write(TmpFl,TmpEL);
      end;
      CloseFile(ChangeFl);
    end;
    if not IsLoaded then
      Write(TmpFl,UserInfo);
    CloseFile(TmpFl);
    DeleteFile(FileName);
    RenameFile('temp.dat',FileName);
  end;

  Procedure DefineFileName(Sender: TObject; var FlDir,FlName : String);
  var
    Btn : TButton;
    ThPan : TPanel;
  begin
    if Sender is TButton then
      Btn := Sender as TButton;
    ThPan := Btn.GetParentComponent as TPanel;
    FlDir := ThPan.Caption;
    FlName := Btn.Caption;
  end;
end.
