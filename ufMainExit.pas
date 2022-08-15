unit ufMainExit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfMainExit = class(TForm)
    Panel1: TPanel;
    bExitApp: TButton;
    bExitAcc: TButton;
    procedure bExitAppClick(Sender: TObject);
    procedure bExitAccClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMainExit: TfMainExit;

implementation

{$R *.dfm}

uses ufTestMain;

procedure TfMainExit.bExitAccClick(Sender: TObject);
begin
  Application.MainForm.Show;
  Close;
end;

procedure TfMainExit.bExitAppClick(Sender: TObject);
begin
  Application.MainForm.Close;
end;

end.
