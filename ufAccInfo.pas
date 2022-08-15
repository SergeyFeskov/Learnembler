unit ufAccInfo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfAccInfo = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    eName: TEdit;
    Panel4: TPanel;
    Label2: TLabel;
    ePass: TEdit;
    lEye: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure lEyeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure WMGetSysCommand( var Message: TMessage );
       message WM_SYSCOMMAND;
  end;

var
  fAccInfo: TfAccInfo;
  IsLearnIsParent : Boolean;

implementation

uses
  ufLogIn, ufLearnMain, ufTestMain, ufChangePass, ufUserStat;

{$R *.dfm}

procedure TfAccInfo.Button1Click(Sender: TObject);
begin
  Hide;
  fChangePass.Show;
end;

procedure TfAccInfo.Button2Click(Sender: TObject);
begin
  Hide;
  fUserStat.Show;
end;

procedure TfAccInfo.FormActivate(Sender: TObject);
begin
  eName.Text := CurrUser.UserName;
end;

procedure TfAccInfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ePass.PasswordChar := '*';
  if IsLearnIsParent then
    fLearnMain.Show
  else
    fTestMain.Show;
end;

procedure TfAccInfo.FormHide(Sender: TObject);
begin
  ePass.PasswordChar := '*';
end;

procedure TfAccInfo.FormShow(Sender: TObject);
begin
  ePass.Text := CurrUser.UserPassword;
end;

procedure TfAccInfo.lEyeClick(Sender: TObject);
begin
  if ePass.PasswordChar = '*' then
    ePass.PasswordChar := #0
  else
    ePass.PasswordChar := '*';
end;

procedure TfAccInfo.WMGetSysCommand( var Message: TMessage );
begin
   if ( Message.wParam = SC_MINIMIZE ) then
      Application.Minimize
   else
      inherited;
end;

end.
