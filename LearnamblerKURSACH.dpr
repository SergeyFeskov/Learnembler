program LearnamblerKURSACH;

uses
  Vcl.Forms,
  ufLogIn in 'ufLogIn.pas' {fLogIn},
  SubroutinesLib in 'units\SubroutinesLib.pas',
  ufReg in 'ufReg.pas' {fReg},
  TypesLib in 'units\TypesLib.pas',
  ufChooseMode in 'ufChooseMode.pas' {fChooseMode},
  ufLearnMain in 'ufLearnMain.pas' {fLearnMain},
  ufThemePage in 'ufThemePage.pas' {fThemePage},
  ufTestMain in 'ufTestMain.pas' {fTestMain},
  ufTestPage in 'ufTestPage.pas' {fTestPage},
  ufTestExit in 'ufTestExit.pas' {fTestExit},
  ufTestResults in 'ufTestResults.pas' {fTestResults},
  ufMainExit in 'ufMainExit.pas' {fMainExit},
  ufAccInfo in 'ufAccInfo.pas' {fAccInfo},
  ufChangePass in 'ufChangePass.pas' {fChangePass},
  ufUserStat in 'ufUserStat.pas' {fUserStat};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := False;
  Application.CreateForm(TfLogIn, fLogIn);
  Application.CreateForm(TfReg, fReg);
  Application.CreateForm(TfChooseMode, fChooseMode);
  Application.CreateForm(TfLearnMain, fLearnMain);
  Application.CreateForm(TfThemePage, fThemePage);
  Application.CreateForm(TfTestMain, fTestMain);
  Application.CreateForm(TfTestPage, fTestPage);
  Application.CreateForm(TfTestExit, fTestExit);
  Application.CreateForm(TfTestResults, fTestResults);
  Application.CreateForm(TfMainExit, fMainExit);
  Application.CreateForm(TfAccInfo, fAccInfo);
  Application.CreateForm(TfChangePass, fChangePass);
  Application.CreateForm(TfUserStat, fUserStat);
  Application.Run;
end.
