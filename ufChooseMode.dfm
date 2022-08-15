object fChooseMode: TfChooseMode
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Learnembler'
  ClientHeight = 91
  ClientWidth = 284
  Color = clBtnFace
  Constraints.MaxHeight = 130
  Constraints.MaxWidth = 300
  Constraints.MinHeight = 130
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 14
    Width = 284
    Height = 28
    Align = alBottom
    Alignment = taCenter
    Caption = #1042#1099#1073#1086#1088' '#1088#1077#1078#1080#1084#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 139
  end
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 284
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bLearnEnter: TButton
      Left = 41
      Top = 6
      Width = 81
      Height = 30
      Caption = #1054#1073#1091#1095#1077#1085#1080#1077
      TabOrder = 0
      OnClick = bLearnEnterClick
    end
    object bTestEnter: TButton
      Left = 161
      Top = 6
      Width = 81
      Height = 30
      Caption = #1058#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
      TabOrder = 1
      OnClick = bTestEnterClick
    end
  end
end
