object fTestMain: TfTestMain
  Left = 0
  Top = 0
  Width = 1000
  Height = 500
  HorzScrollBar.Smooth = True
  HorzScrollBar.Tracking = True
  VertScrollBar.ButtonSize = 5
  VertScrollBar.Tracking = True
  AutoScroll = True
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Learnembler'
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
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 967
    Height = 565
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 92
      Width = 967
      Height = 49
      Align = alTop
      Caption = #1042#1074#1077#1076#1077#1085#1080#1077' '#1074' '#1072#1089#1089#1077#1084#1073#1083#1077#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 984
    end
    object Panel3: TPanel
      Left = 0
      Top = 141
      Width = 967
      Height = 84
      Align = alTop
      BevelOuter = bvNone
      Caption = #1042#1074#1077#1076#1077#1085#1080#1077' '#1074' '#1072#1089#1089#1077#1084#1073#1083#1077#1088
      ShowCaption = False
      TabOrder = 1
      ExplicitWidth = 984
      object bThIntro1: TButton
        Left = 196
        Top = 7
        Width = 280
        Height = 70
        Hint = #1042#1074#1077#1076#1077#1085#1080#1077' '#1074' '#1072#1089#1089#1077#1084#1073#1083#1077#1088
        Caption = #1054#1089#1085#1086#1074#1099' '#1072#1089#1089#1077#1084#1073#1083#1077#1088#1072', '#1087#1088#1086#1094#1077#1089#1089#1086#1088', '#1087#1086#1085#1103#1090#1080#1077' '#1080#1085#1089#1090#1088#1091#1082#1094#1080#1080' '#1080' '#1086#1087#1077#1088#1072#1085#1076#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        WordWrap = True
        OnClick = bTestClick
      end
      object bThIntro2: TButton
        Left = 508
        Top = 7
        Width = 280
        Height = 70
        Caption = #1056#1077#1075#1080#1089#1090#1088#1099' '#1074' '#1072#1088#1093#1080#1090#1077#1082#1090#1091#1088#1077' IA-32. '#1048#1093' '#1074#1080#1076#1099' '#1080' '#1085#1072#1079#1085#1072#1095#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        WordWrap = True
        OnClick = bTestClick
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 358
      Width = 967
      Height = 49
      Align = alTop
      Caption = #1057#1090#1077#1082' '#1080' '#1089#1090#1088#1091#1082#1090#1091#1088#1099', '#1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1089' '#1085#1080#1084
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ExplicitTop = 225
      ExplicitWidth = 984
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 967
      Height = 92
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel5'
      ShowCaption = False
      TabOrder = 3
      ExplicitWidth = 984
      object Label1: TLabel
        Left = 0
        Top = 60
        Width = 967
        Height = 32
        Align = alBottom
        Alignment = taCenter
        Caption = #1056#1077#1078#1080#1084' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 233
      end
      object lAppName: TLabel
        Left = 0
        Top = 0
        Width = 967
        Height = 72
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'LEARNAMBLER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 50
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 984
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 407
      Width = 967
      Height = 84
      Align = alTop
      BevelOuter = bvNone
      Caption = #1057#1090#1077#1082' '#1080' '#1089#1090#1088#1091#1082#1090#1091#1088#1099', '#1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1089' '#1085#1080#1084
      ShowCaption = False
      TabOrder = 4
      ExplicitTop = 274
      ExplicitWidth = 984
      object Button1: TButton
        Left = 196
        Top = 7
        Width = 280
        Height = 70
        Hint = #1042#1074#1077#1076#1077#1085#1080#1077' '#1074' '#1072#1089#1089#1077#1084#1073#1083#1077#1088
        Caption = #1057#1090#1077#1082'. '#1050#1086#1084#1072#1085#1076#1099' '#1076#1083#1103' '#1088#1072#1073#1086#1090#1099' '#1089#1086' '#1089#1090#1077#1082#1086#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        WordWrap = True
        OnClick = bTestClick
      end
      object Button2: TButton
        Left = 508
        Top = 7
        Width = 280
        Height = 70
        Caption = #1055#1088#1086#1094#1077#1076#1091#1088#1099'. '#1050#1086#1084#1072#1085#1076#1099' '#1076#1083#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' '#1087#1088#1086#1094#1077#1076#1091#1088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        WordWrap = True
        OnClick = bTestClick
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 225
      Width = 967
      Height = 49
      Align = alTop
      Caption = #1057#1090#1088#1086#1082#1080' '#1080' '#1075#1088#1072#1092#1080#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      ExplicitLeft = 8
      ExplicitTop = 170
    end
    object Panel8: TPanel
      Left = 0
      Top = 274
      Width = 967
      Height = 84
      Align = alTop
      BevelOuter = bvNone
      Caption = #1057#1090#1088#1086#1082#1080' '#1080' '#1075#1088#1072#1092#1080#1082#1072
      ShowCaption = False
      TabOrder = 6
      ExplicitTop = 231
      object Button8: TButton
        Left = 343
        Top = 6
        Width = 280
        Height = 70
        Caption = #1057#1090#1088#1086#1082#1086#1074#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1080' '#1084#1072#1089#1089#1080#1074#1099'. '#1050#1086#1084#1072#1085#1076#1099' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1089#1090#1088#1086#1082' '#1080' '#1084#1072#1089#1089#1080#1074#1086#1074
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        WordWrap = True
        OnClick = bTestClick
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 192
    Top = 18
    object mmiUser: TMenuItem
      Caption = #39#1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103#39
      object uiViewAcc: TMenuItem
        Caption = #1055#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1072#1082#1082#1072#1091#1085#1090
        OnClick = uiViewAccClick
      end
      object uiExitAcc: TMenuItem
        Caption = #1042#1099#1093#1086#1076' '#1080#1079' '#1072#1082#1082#1072#1091#1085#1090#1072
        OnClick = uiExitAccClick
      end
    end
    object mmiEnterLearning: TMenuItem
      Caption = #1056#1077#1078#1080#1084' '#1086#1073#1091#1095#1077#1085#1080#1103
      OnClick = mmiEnterLearningClick
    end
  end
end
