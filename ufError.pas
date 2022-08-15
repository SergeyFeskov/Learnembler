unit ufError;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfError = class(TForm)
    pError: TPanel;
    Panel1: TPanel;
    memErrorMess: TMemo;
    bReturn: TButton;
    procedure bReturnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fError: TfError;

implementation

{$R *.dfm}

procedure TfError.bReturnClick(Sender: TObject);
begin
  Close;
end;

end.
