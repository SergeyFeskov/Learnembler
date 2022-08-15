object fTestResults: TfTestResults
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Tracking = True
  BorderIcons = [biSystemMenu]
  Caption = 'Learnembler'
  ClientHeight = 444
  ClientWidth = 1310
  Color = clBtnFace
  Constraints.MaxHeight = 483
  Constraints.MaxWidth = 1326
  Constraints.MinHeight = 483
  Constraints.MinWidth = 1326
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object sgResTable: TStringGrid
    Left = 0
    Top = 0
    Width = 1310
    Height = 444
    Align = alClient
    ColCount = 6
    DefaultColWidth = 100
    FixedCols = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goTabs, goRowSelect]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnDrawCell = sgResTableDrawCell
    ExplicitTop = -144
    ExplicitHeight = 461
  end
end
