object fMainExit: TfMainExit
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Learnembler'
  ClientHeight = 101
  ClientWidth = 294
  Color = clBtnFace
  Constraints.MaxHeight = 130
  Constraints.MaxWidth = 300
  Constraints.MinHeight = 130
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 30
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 294
    Height = 101
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 200
    ExplicitHeight = 171
    object bExitApp: TButton
      Left = 8
      Top = 23
      Width = 130
      Height = 55
      Caption = #1042#1099#1081#1090#1080' '#1080#1079' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      WordWrap = True
      OnClick = bExitAppClick
    end
    object bExitAcc: TButton
      Left = 156
      Top = 23
      Width = 130
      Height = 55
      Caption = #1042#1099#1081#1090#1080' '#1080#1079' '#1072#1082#1082#1072#1091#1085#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      WordWrap = True
      OnClick = bExitAccClick
    end
  end
end
