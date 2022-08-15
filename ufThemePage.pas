unit ufThemePage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  TypesLib;

type
  TfThemePage = class(TForm)
    Panel2: TPanel;
    bPrev: TButton;
    bRet: TButton;
    bNext: TButton;
    Panel4: TPanel;
    Panel1: TPanel;
    mText: TMemo;
    Panel3: TPanel;
    Panel5: TPanel;
    pThName: TLabel;
    pSubThName: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bNextClick(Sender: TObject);
    procedure bPrevClick(Sender: TObject);
    procedure bRetClick(Sender: TObject);
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
  fThemePage: TfThemePage;

implementation

uses
  ufLearnMain;

var
  ThFl : TextFile;
  CurrAdr : TPageAdr;
{$R *.dfm}

procedure TfThemePage.bNextClick(Sender: TObject);
var
  StrTmpAdr : TStrAdr;
begin
  mText.Clear;
  CurrAdr := CurrAdr^.NextAdr;
  if CurrAdr^.NextAdr = Nil then
    bNext.Visible := False;
  bPrev.Visible := True;
  StrTmpAdr := CurrAdr^.StrStartAdr;
  pSubThName.Caption := StrTmpAdr^.Str;
  StrTmpAdr := StrTmpAdr^.NextAdr;
  repeat
    mText.Lines.Add(StrTmpAdr^.Str);
    StrTmpAdr := StrTmpAdr^.NextAdr;
  until StrTmpAdr = Nil;
end;

procedure TfThemePage.bPrevClick(Sender: TObject);
var
  StrTmpAdr : TStrAdr;
begin
  mText.Clear;
  CurrAdr := CurrAdr^.PrevAdr;
  if CurrAdr^.PrevAdr = Nil then
    bPrev.Visible := False;
  bNext.Visible := True;
  StrTmpAdr := CurrAdr^.StrStartAdr;
  pSubThName.Caption := StrTmpAdr^.Str;
  StrTmpAdr := StrTmpAdr^.NextAdr;
  repeat
    mText.Lines.Add(StrTmpAdr^.Str);
    StrTmpAdr := StrTmpAdr^.NextAdr;
  until StrTmpAdr = Nil;
end;

procedure TfThemePage.bRetClick(Sender: TObject);
begin
  Close;
end;

procedure TfThemePage.FormClose(Sender: TObject; var Action: TCloseAction);
var
  TmpPageAdr : TPageAdr;
  TmpStrAdr : TStrAdr;
begin
  fLearnMain.Show;
  if CurrAdr <> Nil then
    while CurrAdr.PrevAdr <> Nil do
      CurrAdr := CurrAdr.PrevAdr;
  while CurrAdr <> Nil do
  begin
    TmpPageAdr := CurrAdr;
    with TmpPageAdr^ do
      while StrStartAdr <> Nil do
      begin
        TmpStrAdr := StrStartAdr;
        StrStartAdr := StrStartAdr^.NextAdr;
        Dispose(TmpStrAdr);
      end;
    CurrAdr := CurrAdr.NextAdr;
    Dispose(TmpPageAdr);
  end;
  bNext.Visible := True;
end;

procedure TfThemePage.FormShow(Sender: TObject);
var
  TmpStr : String;
  StrTmpAdr : TStrAdr;
  CurrTmpAdr, TmpAdr, PageStartAdr : TPageAdr;
begin
  mText.Clear;
  pThName.Caption := ThFlName;
  AssignFile(ThFl,'Themes\'+ThFlDir+'\'+ThFlName+'.txt');
  Reset(ThFl);

  New(PageStartAdr);
  PageStartAdr^.PrevAdr := Nil;
  PageStartAdr^.NextAdr := Nil;

  Readln(ThFl, TmpStr);
  with PageStartAdr^ do
  begin
    New(StrStartAdr);
    StrStartAdr^.Str := TmpStr;
    StrTmpAdr := StrStartAdr;
  end;

  while (TmpStr <> '$') and not EOF(ThFl) do
  begin
    Readln(ThFl, TmpStr);
    if (TmpStr <> '$') then
    begin
      New(StrTmpAdr^.NextAdr);
      StrTmpAdr^.NextAdr^.Str := TmpStr;
      StrTmpAdr^.NextAdr^.NextAdr := Nil;
      StrTmpAdr := StrTmpAdr^.NextAdr;
    end;
  end;

  if not EOF(ThFl) then
  begin
    New(CurrTmpAdr);
    PageStartAdr.NextAdr := CurrTmpAdr;
    CurrTmpAdr^.PrevAdr := PageStartAdr;
    CurrTmpAdr^.NextAdr := Nil;
  end;

  while not EOF(ThFl) do
  begin
    with CurrTmpAdr^ do
    begin
      New(StrStartAdr);
      Readln(ThFl, TmpStr);
      StrStartAdr^.Str := TmpStr;
      StrStartAdr^.NextAdr := Nil;
      StrTmpAdr := StrStartAdr;
    end;

    repeat
      Readln(ThFl, TmpStr);
      if (TmpStr <> '$') then
      begin
        New(StrTmpAdr^.NextAdr);
        StrTmpAdr^.NextAdr^.Str := TmpStr;
        StrTmpAdr^.NextAdr^.NextAdr := Nil;
        StrTmpAdr := StrTmpAdr^.NextAdr;
      end;
    until (TmpStr = '$') or EOF(ThFl);

    if not EOF(ThFl) then
    begin
      New(TmpAdr);
      CurrTmpAdr^.NextAdr := TmpAdr;
      TmpAdr^.PrevAdr := CurrTmpAdr;
      TmpAdr^.NextAdr := Nil;
      CurrTmpAdr := TmpAdr;
    end;
  end;

  CloseFile(ThFl);
  CurrAdr := PageStartAdr;
  bPrev.Visible := False;
  if CurrAdr^.NextAdr = Nil then
    bNext.Visible := False;

  StrTmpAdr := CurrAdr^.StrStartAdr;
  pSubThName.Caption := StrTmpAdr^.Str;
  StrTmpAdr := StrTmpAdr^.NextAdr;
  repeat
    mText.Lines.Add(StrTmpAdr^.Str);
    StrTmpAdr := StrTmpAdr^.NextAdr;
  until StrTmpAdr = Nil;
end;

procedure TfThemePage.WMGetSysCommand( var Message: TMessage );
begin
   if ( Message.wParam = SC_MINIMIZE ) then
      Application.Minimize
   else
      inherited;
end;

end.
