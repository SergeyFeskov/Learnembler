unit ufTestMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufLearnMain, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  SubroutinesLib,
  TypesLib,
  ufTestPage,
  ufAccInfo;

type
  TfTestMain = class(TForm)
  MainMenu1: TMainMenu;
    mmiEnterLearning: TMenuItem;
    mmiUser: TMenuItem;
    uiViewAcc: TMenuItem;
    uiExitAcc: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    bThIntro1: TButton;
    bThIntro2: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    lAppName: TLabel;
    Panel6: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel7: TPanel;
    Panel8: TPanel;
    Button8: TButton;
    procedure bTestClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mmiEnterLearningClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure uiExitAccClick(Sender: TObject);
    procedure uiViewAccClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure WMGetSysCommand( var Message: TMessage );
       message WM_SYSCOMMAND;
  end;

var
  fTestMain: TfTestMain;
  TestFlDir, TestFlName : String;

implementation

uses
  ufLogIn, ufChooseMode, ufMainExit;

var
  IsClosing : Boolean;

{$R *.dfm}

procedure TfTestMain.bTestClick(Sender: TObject);
begin
  DefineFileName(Sender, TestFlDir, TestFlName);
  fTestPage.Show;
  Hide;
end;

procedure TfTestMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not IsClosing then
  begin
    UserStatToFile(CurrUser.UserName, UserStatStartAdr);
    fMainExit.ShowModal;
  end;
end;

procedure TfTestMain.FormCreate(Sender: TObject);
begin
  VertScrollBar.Tracking:=true;
end;

procedure TfTestMain.FormShow(Sender: TObject);
begin
  IsClosing := False;
  mmiUser.Caption := CurrUser.UserName;
end;

procedure TfTestMain.mmiEnterLearningClick(Sender: TObject);
begin
  IsClosing := True;
  fLearnMain.Show;
  Close;
end;

procedure TfTestMain.uiExitAccClick(Sender: TObject);
begin
  UserStatToFile(CurrUser.UserName, UserStatStartAdr);
  Application.MainForm.Show;
  IsClosing := True;
  Close;
end;

procedure TfTestMain.uiViewAccClick(Sender: TObject);
begin
  IsLearnIsParent := False;
  Hide;
  fAccInfo.Show;
end;

procedure TfTestMain.WMGetSysCommand( var Message: TMessage );
begin
   if ( Message.wParam = SC_MINIMIZE ) then
      Application.Minimize
   else
      inherited;
end;

end.
