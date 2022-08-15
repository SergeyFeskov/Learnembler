unit ufTestExit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfTestExit = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    bExit: TButton;
    bEnd: TButton;
    bRet: TButton;
    procedure bExitClick(Sender: TObject);
    procedure bEndClick(Sender: TObject);
    procedure bRetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTestExit: TfTestExit;
  IsClosing : Boolean;

implementation

uses
  ufTestPage;

{$R *.dfm}

procedure TfTestExit.bEndClick(Sender: TObject);
begin
  fTestPage.bEnd.Click;
  IsClosing := False;
  Close;
end;

procedure TfTestExit.bExitClick(Sender: TObject);
begin
  SetLength(UserAnses, 0);
  IsClosing := True;
  Close;
end;

procedure TfTestExit.bRetClick(Sender: TObject);
begin
  IsClosing := False;
  Close;
end;

end.
