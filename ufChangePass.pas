unit ufChangePass;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, TypesLib, SubroutinesLib;

type
  TfChangePass = class(TForm)
    Panel1: TPanel;
    bRegAcc: TButton;
    bRet: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    lRepPass: TLabel;
    lRepEye: TLabel;
    eRepPass: TEdit;
    pPass: TPanel;
    lPassword: TLabel;
    lEye: TLabel;
    ePass: TEdit;
    procedure lEyeClick(Sender: TObject);
    procedure ePassKeyPress(Sender: TObject; var Key: Char);
    procedure eRepPassKeyPress(Sender: TObject; var Key: Char);
    procedure bRetClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bRegAccClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure WMGetSysCommand( var Message: TMessage );
       message WM_SYSCOMMAND;
  end;

var
  fChangePass: TfChangePass;

implementation

uses
  ufAccInfo, ufLogIn;

{$R *.dfm}

procedure TfChangePass.lEyeClick(Sender: TObject);
begin
  if ePass.PasswordChar = '*' then
    ePass.PasswordChar := #0
  else
    ePass.PasswordChar := '*';
end;

procedure TfChangePass.bRegAccClick(Sender: TObject);
var
  UsersFl : File of TUserInfo;
  TmpUserInfo : TUserInfo;
  IsPassValid, IsRepPassValid, IsFound : Boolean;
begin
  IsPassValid := True;
  IsRepPassValid := True;

  if ePass.Text = '' then
  begin
    IsPassValid := False;
    ShowMessage('Введите пароль.');
  end
  else if eRepPass.Text = '' then
  begin
    IsRepPassValid := False;
    ShowMessage('Повторите пароль');
  end
  else if ePass.Text <> eRepPass.Text then
  begin
    IsPassValid := False;
    IsRepPassValid := False;
    ShowMessage('Введённый пароль не соответсвует повторённому.');
  end;

  if IsPassValid and IsRepPassValid then
  begin
    AssignFile(UsersFl, 'UsersStats\users.dat');
    Reset(UsersFl);

    IsFound := False;
    while not IsFound do
    begin
      Read(UsersFl,TmpUserInfo);
      if TmpUserInfo.UserName = CurrUser.UserName then
      begin
        IsFound := True;
        TmpUserInfo.UserPassword := ePass.Text;
      end;
    end;
    CloseFile(UsersFl);

    CurrUser.UserPassword := ePass.Text;
    UserInfoToFile('UsersStats\users.dat', TmpUserInfo);
    ShowMessage('Пароль успешно изменён!');
    Close;
  end
  else if not (IsPassValid or IsRepPassValid) then
  begin
    ePass.Clear;
    eRepPass.Clear;
    ePass.SetFocus;
  end
  else if not IsPassValid then
  begin
    ePass.Clear;
    ePass.SetFocus;
  end
  else if not IsRepPassValid then
  begin
    eRepPass.Clear;
    eRepPass.SetFocus;
  end;
end;

procedure TfChangePass.bRetClick(Sender: TObject);
begin
  Close;
end;

procedure TfChangePass.ePassKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['a'..'z','A'..'Z','0'..'9',#8, #13]) then
    Key := #0;
  if Key = #13 then
    eRepPass.SetFocus;
end;

procedure TfChangePass.eRepPassKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['a'..'z','A'..'Z','0'..'9',#8, #13]) then
    Key := #0;
  if Key = #13 then
    bRegAcc.Click;
end;

procedure TfChangePass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ePass.Clear;
  eRepPass.Clear;
  fAccInfo.Show;
end;

procedure TfChangePass.WMGetSysCommand( var Message: TMessage );
begin
   if ( Message.wParam = SC_MINIMIZE ) then
      Application.Minimize
   else
      inherited;
end;

end.
