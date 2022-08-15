unit ufLearnMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  ufThemePage,
  SubroutinesLib,
  ufMainExit,
  ufAccInfo;

type
  TfLearnMain = class(TForm)
    MainMenu1: TMainMenu;
    mmiEnterTesting: TMenuItem;
    mmiUser: TMenuItem;
    uiViewAcc: TMenuItem;
    uiExitAcc: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    bThIntro1: TButton;
    bThIntro2: TButton;
    bThIntro3: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    lAppName: TLabel;
    bThIntro4: TButton;
    bThIntro5: TButton;
    bThIntro6: TButton;
    Panel6: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Panel7: TPanel;
    Panel8: TPanel;
    Button6: TButton;
    Button8: TButton;
    Panel9: TPanel;
    Panel10: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bThemeClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mmiEnterTestingClick(Sender: TObject);
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
  fLearnMain: TfLearnMain;
  ThFlName, ThFlDir: String;

implementation

uses
  ufLogIn, ufChooseMode, ufTestMain;

var
  IsClosing : Boolean;

{$R *.dfm}

procedure TfLearnMain.bThemeClick(Sender: TObject);
begin
  DefineFileName(Sender, ThFlDir, ThFlName);
  fThemePage.Show;
  Hide;
end;

procedure TfLearnMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not IsClosing then
  begin
    UserStatToFile(CurrUser.UserName, UserStatStartAdr);
    fMainExit.ShowModal;
  end;
end;

procedure TfLearnMain.FormCreate(Sender: TObject);
begin
  VertScrollBar.Tracking:=true;
end;

procedure TfLearnMain.FormShow(Sender: TObject);
begin
  IsClosing := False;
  mmiUser.Caption := CurrUser.UserName;
end;

procedure TfLearnMain.mmiEnterTestingClick(Sender: TObject);
begin
  IsClosing := True;
  fTestMain.Show;
  Close;
end;

procedure TfLearnMain.uiExitAccClick(Sender: TObject);
begin
  UserStatToFile(CurrUser.UserName, UserStatStartAdr);
  Application.MainForm.Show;
  IsClosing := True;
  Close;
end;

procedure TfLearnMain.uiViewAccClick(Sender: TObject);
begin
  IsLearnIsParent := True;
  Hide;
  fAccInfo.Show;
end;

procedure TfLearnMain.WMGetSysCommand( var Message: TMessage );
begin
   if ( Message.wParam = SC_MINIMIZE ) then
      Application.Minimize
   else
      inherited;
end;
end.
