object fThemePage: TfThemePage
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 381
    Width = 984
    Height = 80
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvNone
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 0
    object bPrev: TButton
      Left = 20
      Top = 16
      Width = 150
      Height = 50
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1089#1083#1072#1081#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bPrevClick
    end
    object bRet: TButton
      Left = 417
      Top = 16
      Width = 150
      Height = 50
      Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103' '#1074' '#1084#1077#1085#1102' '#1086#1073#1091#1095#1077#1085#1080#1103
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
      Left = 814
      Top = 16
      Width = 150
      Height = 50
      Caption = #1057#1083#1077#1076#1091#1102#1097#1080#1081' '#1089#1083#1072#1081#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bNextClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 65
    Width = 984
    Height = 316
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel4'
    TabOrder = 1
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 984
      Height = 316
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 0
      object mText: TMemo
        Left = 0
        Top = 0
        Width = 984
        Height = 301
        Align = alTop
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 65
    Align = alTop
    Caption = 'Panel3'
    ShowCaption = False
    TabOrder = 2
    object pSubThName: TLabel
      Left = 1
      Top = 41
      Width = 982
      Height = 23
      Align = alClient
      Alignment = taCenter
      Caption = #39#1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1086#1076#1090#1077#1084#1099#39
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 144
      ExplicitHeight = 21
    end
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 982
      Height = 40
      Align = alTop
      AutoSize = True
      Constraints.MaxHeight = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ShowCaption = False
      TabOrder = 0
      object pThName: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 974
        Height = 32
        Align = alClient
        Alignment = taCenter
        Caption = #39#1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1077#1084#1099#39
        WordWrap = True
        ExplicitWidth = 158
        ExplicitHeight = 30
      end
    end
  end
end
