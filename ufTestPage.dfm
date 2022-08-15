object fTestPage: TfTestPage
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Learnembler'
  ClientHeight = 461
  ClientWidth = 984
  Color = clBtnFace
  Constraints.MaxHeight = 500
  Constraints.MaxWidth = 1000
  Constraints.MinHeight = 500
  Constraints.MinWidth = 1000
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pThName: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = #39#1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1077#1084#1099#39
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 408
    Width = 984
    Height = 53
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    object bPrev: TButton
      Left = 20
      Top = 7
      Width = 160
      Height = 40
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = bPrevClick
    end
    object bRet: TButton
      Left = 417
      Top = 7
      Width = 150
      Height = 40
      Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103' '#1074' '#1084#1077#1085#1102' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      WordWrap = True
      OnClick = bRetClick
    end
    object bNext: TButton
      Left = 804
      Top = 7
      Width = 160
      Height = 40
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1074#1086#1087#1088#1086#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bNextClick
    end
    object bEnd: TButton
      Left = 804
      Top = 6
      Width = 160
      Height = 40
      Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100' '#1090#1077#1089#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = bEndClick
    end
  end
  object pMuTest: TPanel
    Left = 0
    Top = 68
    Width = 984
    Height = 340
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 2
    Visible = False
    object chgMuTest: TCheckListBox
      Left = 0
      Top = 0
      Width = 984
      Height = 340
      Align = alClient
      BorderStyle = bsNone
      Color = clBtnFace
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ItemHeight = 68
      ParentCtl3D = False
      ParentFont = False
      Style = lbOwnerDrawFixed
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 984
    Height = 27
    Align = alTop
    AutoSize = True
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 3
    object lQuest: TLabel
      Left = 1
      Top = 1
      Width = 982
      Height = 25
      Align = alTop
      Alignment = taCenter
      BiDiMode = bdLeftToRight
      Caption = #39#1042#1086#1087#1088#1086#1089#39
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      WordWrap = True
      ExplicitWidth = 72
    end
  end
  object pMoTest: TPanel
    Left = 0
    Top = 68
    Width = 984
    Height = 340
    Align = alClient
    BevelOuter = bvNone
    Caption = 'pMoTest'
    ParentBackground = False
    ShowCaption = False
    TabOrder = 4
    Visible = False
    object rgMoTest: TRadioGroup
      Left = 0
      Top = 0
      Width = 984
      Height = 340
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
end
