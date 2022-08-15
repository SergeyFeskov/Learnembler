unit ufChooseMode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ufLearnMain, Vcl.ExtCtrls, ufTestMain;

type
  TfChooseMode = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    bLearnEnter: TButton;
    bTestEnter: TButton;
    procedure bLearnEnterClick(Sender: TObject);
    procedure bTestEnterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure WMGetSysCommand( var Message: TMessage );
       message WM_SYSCOMMAND;
  end;

var
  fChooseMode: TfChooseMode;

implementation

uses
  ufLogIn;

{$R *.dfm}

procedure TfChooseMode.WMGetSysCommand( var Message: TMessage );
begin
   if ( Message.wParam = SC_MINIMIZE ) then
      Application.Minimize
   else
      inherited;
end;

procedure TfChooseMode.bLearnEnterClick(Sender: TObject);
begin
  Close;
  fLogIn.Hide;
  fLearnMain.Show;
end;

procedure TfChooseMode.bTestEnterClick(Sender: TObject);
begin
  Close;
  fLogIn.Hide;
  fTestMain.Show;
end;

procedure TfChooseMode.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fLogIn.Show;
end;

end.
