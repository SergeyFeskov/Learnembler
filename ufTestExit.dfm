object fTestExit: TfTestExit
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Learnembler'
  ClientHeight = 171
  ClientWidth = 494
  Color = clBtnFace
  Constraints.MaxHeight = 200
  Constraints.MaxWidth = 500
  Constraints.MinHeight = 200
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 30
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 494
    Height = 30
    Align = alTop
    Alignment = taCenter
    Caption = #1042#1099' '#1085#1077' '#1087#1088#1086#1096#1083#1080' '#1090#1077#1089#1090' '#1076#1086' '#1082#1086#1085#1094#1072'.'
    WordWrap = True
    ExplicitWidth = 281
  end
  object Label2: TLabel
    Left = 0
    Top = 30
    Width = 494
    Height = 30
    Align = alTop
    Alignment = taCenter
    Caption = #1042#1099' '#1091#1074#1077#1088#1077#1085#1099', '#1095#1090#1086' '#1093#1086#1090#1080#1090#1077' '#1074#1099#1081#1090#1080'?'
    ExplicitWidth = 302
  end
  object Panel1: TPanel
    Left = 0
    Top = 60
    Width = 494
    Height = 111
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object bExit: TButton
      Left = 12
      Top = 18
      Width = 150
      Height = 70
      Caption = #1042#1099#1081#1090#1080' '#1080#1079' '#1090#1077#1089#1090#1072' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      WordWrap = True
      OnClick = bExitClick
    end
    object bEnd: TButton
      Left = 172
      Top = 18
      Width = 150
      Height = 70
      Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100' '#1090#1077#1089#1090' '#1080' '#1087#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      WordWrap = True
      OnClick = bEndClick
    end
    object bRet: TButton
      Left = 332
      Top = 18
      Width = 150
      Height = 70
      Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103' '#1080' '#1087#1088#1086#1076#1086#1083#1078#1080#1090#1100' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      WordWrap = True
      OnClick = bRetClick
    end
  end
end
