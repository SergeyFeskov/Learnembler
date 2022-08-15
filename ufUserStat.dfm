object fUserStat: TfUserStat
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  Caption = 'Learnembler'
  ClientHeight = 461
  ClientWidth = 776
  Color = clBtnFace
  Constraints.MaxHeight = 500
  Constraints.MaxWidth = 800
  Constraints.MinHeight = 500
  Constraints.MinWidth = 770
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object sgStatTable: TStringGrid
    Left = 0
    Top = 0
    Width = 776
    Height = 461
    Align = alClient
    ColCount = 4
    DefaultColWidth = 100
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goTabs, goRowSelect]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnDrawCell = sgStatTableDrawCell
    ExplicitWidth = 1310
  end
end
