unit ufLogIn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ufReg, SubroutinesLib, TypesLib, ufChooseMode;

type
  TfLogIn = class(TForm)
    lAppName: TLabel;
    eUserName: TEdit;
    lUserName: TLabel;
    lPassword: TLabel;
    ePass: TEdit;
    bEnterAccount: TButton;
    bRegistration: TButton;
    lAlternativeOptions: TLabel;
    lEye: TLabel;

    procedure bRegistrationClick(Sender: TObject);
    procedure lEyeClick(Sender: TObject);
    procedure eUserNameKeyPress(Sender: TObject; var Key: Char);
    procedure ePassKeyPress(Sender: TObject; var Key: Char);
    procedure bEnterAccountClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
end;

var
  fLogIn: TfLogIn;
  CurrUser : TUserInfo;
  UserStatStartAdr : TStatAdr;

implementation

{$R *.dfm}

procedure TfLogIn.bEnterAccountClick(Sender: TObject);
var
  IsNameValid, IsPassValid, IsNameExists : Boolean;
  TmpUser : TUserInfo;
  UsersFl : File of TUserInfo;
begin
  IsNameValid := True;
  IsPassValid := True;
  if eUserName.Text = '' then
  begin
    IsNameValid := False;
    ShowMessage('Введите имя пользователя.');
  end;
  if ePass.Text = '' then
  begin
    IsPassValid := False;
    ShowMessage('Введите пароль.');
  end;

  IsNameExists := False;
  AssignFile(UsersFl, 'UsersStats\users.dat');
  Reset(UsersFl);
  while not EOF(UsersFl) and not IsNameExists do
  begin
    Read(UsersFl,TmpUser);
    if (TmpUser.UserName = eUserName.Text) then
    begin
      IsNameExists := True;
      if TmpUser.UserPassword <> ePass.Text then
      begin
        IsPassValid := False;
        ShowMessage('Неправильный пароль.');
      end;
    end;
  end;
  CloseFile(UsersFl);

  if not IsNameExists then
  begin
    IsNameValid := False;
    ShowMessage('Пользователя с таким именем не существует.');
  end;

  if IsNameValid and IsPassValid then
  begin
    Hide;
    CurrUser := TmpUser;
    CreateStatDSD(CurrUser, UserStatStartAdr);
    fChooseMode.Show;
  end
  else if not (IsNameValid or IsPassValid) then
  begin
    eUserName.Clear;
    ePass.Clear;
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
  end;
end;

procedure TfLogIn.bRegistrationClick(Sender: TObject);
begin
  fReg.Show;
  Hide;
end;

procedure TfLogIn.eUserNameKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['a'..'z','A'..'Z','0'..'9',#8, #13]) then
    Key := #0;
  if Key = #13 then
    ePass.SetFocus;
end;

procedure TfLogIn.FormCreate(Sender: TObject);
begin
  if not DirectoryExists('UsersStats') then
    CreateDir('UsersStats');
end;

procedure TfLogIn.FormHide(Sender: TObject);
begin
  eUserName.Clear;
  ePass.Clear;
end;

procedure TfLogIn.FormShow(Sender: TObject);
begin
  eUserName.SetFocus;
end;

procedure TfLogIn.lEyeClick(Sender: TObject);
begin
  if ePass.PasswordChar = '*' then
    ePass.PasswordChar := #0
  else
    ePass.PasswordChar := '*';
end;

procedure TfLogIn.ePassKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['a'..'z','A'..'Z','0'..'9',#8, #13]) then
    Key := #0;
  if Key = #13 then
    bEnterAccount.Click;
end;
end.
