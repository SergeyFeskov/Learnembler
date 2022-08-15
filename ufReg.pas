unit ufReg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, ufError, SubroutinesLib, TypesLib;

type
  TfReg = class(TForm)
    lReg: TLabel;
    Panel1: TPanel;
    bRegisterAccount: TButton;
    bRet: TButton;
    lAppName: TLabel;
    Panel2: TPanel;
    pName: TPanel;
    eUserName: TEdit;
    lUserName: TLabel;
    pPass: TPanel;
    lPassword: TLabel;
    ePass: TEdit;
    Panel3: TPanel;
    lRepPass: TLabel;
    eRepPass: TEdit;
    lRepEye: TLabel;
    lEye: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bRegisterAccountClick(Sender: TObject);
    procedure bRetClick(Sender: TObject);
    procedure eUserNameKeyPress(Sender: TObject; var Key: Char);
    procedure ePassKeyPress(Sender: TObject; var Key: Char);
    procedure eRepPassKeyPress(Sender: TObject; var Key: Char);
    procedure lEyeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lRepEyeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure WMGetSysCommand( var Message: TMessage );
       message WM_SYSCOMMAND;
  end;

var
  fReg: TfReg;

implementation

{$R *.dfm}

uses
  ufLogIn;

procedure TfReg.bRegisterAccountClick(Sender: TObject);
var
  UsersFl : File of TUserInfo;
  TmpUserInfo : TUserInfo;
  IsNameValid, IsPassValid, IsRepPassValid : Boolean;
begin
  IsNameValid := True;
  IsPassValid := True;
  IsRepPassValid := True;
  if eUserName.Text = '' then
  begin
    IsNameValid := False;
    ShowMessage('Введите имя пользователя.');
  end;

  if FileExists('UsersStats\users.dat') then
  begin
    AssignFile(UsersFl, 'UsersStats\users.dat');
    Reset(UsersFl);
    while not EOF(UsersFl) do
    begin
      Read(UsersFl,TmpUserInfo);
      if TmpUserInfo.UserName = eUserName.Text then
      begin
        IsNameValid := False;
        ShowMessage('Пользователь с таким именем уже существует.');
        fReg.eUserName.Clear;
        fReg.eUserName.SetFocus;
      end;
    end;
    CloseFile(UsersFl);
  end;

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

  if IsNameValid and IsPassValid and IsRepPassValid then
  begin
    with TmpUserInfo do
    begin
      UserName := eUserName.Text;
      UserPassword := ePass.Text;
    end;
    AssignFile(UsersFl, 'UsersStats\'+eUserName.Text+'.dat');
    Rewrite(UsersFl);
    CloseFile(UsersFl);
    UserInfoToFile('UsersStats\users.dat', TmpUserInfo);
    ShowMessage('Пользователь успешно зарегистрирован!');
    Close;
  end
  else if not (IsNameValid or IsPassValid or IsRepPassValid) then
  begin
    eUserName.Clear;
    ePass.Clear;
    eRepPass.Clear;
    eUserName.SetFocus;
  end
  else if not (IsPassValid or IsRepPassValid) then
  begin
    ePass.Clear;
    eRepPass.Clear;
    ePass.SetFocus;
  end
  else if not (IsNameValid or IsPassValid) then
  begin
    eUserName.Clear;
    ePass.Clear;
    eUserName.SetFocus;
  end
  else if not (IsNameValid or IsRepPassValid) then
  begin
    eUserName.Clear;
    eRepPass.Clear;
    eUserName.SetFocus;
  end
  else if not IsNameValid then
  begin
    eUserName.Clear;
    eUserName.SetFocus;
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

procedure TfReg.bRetClick(Sender: TObject);
begin
  Close;
end;

procedure TfReg.ePassKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['a'..'z','A'..'Z','0'..'9',#8, #13]) then
    Key := #0;
  if Key = #13 then
    eRepPass.SetFocus;
end;

procedure TfReg.eRepPassKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['a'..'z','A'..'Z','0'..'9',#8, #13]) then
    Key := #0;
  if Key = #13 then
    bRegisterAccount.Click;
end;

procedure TfReg.eUserNameKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['a'..'z','A'..'Z','0'..'9',#8, #13]) then
    Key := #0;
  if Key = #13 then
    ePass.SetFocus;
end;

procedure TfReg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fLogIn.Show;
  eUserName.Clear;
  ePass.Clear;
  eRepPass.Clear;
end;

procedure TfReg.FormShow(Sender: TObject);
begin
  eUserName.SetFocus;
end;

procedure TfReg.lEyeClick(Sender: TObject);
begin
  if ePass.PasswordChar = '*' then
    ePass.PasswordChar := #0
  else
    ePass.PasswordChar := '*';
end;

procedure TfReg.lRepEyeClick(Sender: TObject);
begin
  if eRepPass.PasswordChar = '*' then
    eRepPass.PasswordChar := #0
  else
    eRepPass.PasswordChar := '*';
end;

procedure TfReg.WMGetSysCommand( var Message: TMessage );
begin
   if ( Message.wParam = SC_MINIMIZE ) then
      Application.Minimize
   else
      inherited;
end;

end.
