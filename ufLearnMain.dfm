object fLearnMain: TfLearnMain
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
    Height = 645
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
    end
    object Panel3: TPanel
      Left = 0
      Top = 141
      Width = 967
      Height = 160
      Align = alTop
      BevelOuter = bvNone
      Caption = #1042#1074#1077#1076#1077#1085#1080#1077' '#1074' '#1072#1089#1089#1077#1084#1073#1083#1077#1088
      ShowCaption = False
      TabOrder = 1
      object bThIntro1: TButton
        Left = 31
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
        OnClick = bThemeClick
      end
      object bThIntro2: TButton
        Left = 343
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
        OnClick = bThemeClick
      end
      object bThIntro3: TButton
        Left = 655
        Top = 7
        Width = 280
        Height = 70
        Caption = 
          #1040#1076#1088#1077#1089#1072#1094#1080#1103' '#1074' '#1088#1077#1072#1083#1100#1085#1086#1084' '#1088#1077#1078#1080#1084#1077'. '#1057#1077#1075#1084#1077#1085#1090', '#1089#1084#1077#1097#1077#1085#1080#1077', '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1077' '#1092#1080#1079#1080#1095 +
          #1077#1089#1082#1086#1075#1086' '#1072#1076#1088#1077#1089#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        WordWrap = True
        OnClick = bThemeClick
      end
      object bThIntro4: TButton
        Left = 31
        Top = 83
        Width = 280
        Height = 70
        Hint = #1042#1074#1077#1076#1077#1085#1080#1077' '#1074' '#1072#1089#1089#1077#1084#1073#1083#1077#1088
        Caption = #1056#1077#1075#1080#1089#1090#1088' '#1087#1088#1086#1075#1088#1072#1084#1084#1085#1086#1075#1086' '#1089#1095#1105#1090#1095#1080#1082#1072' ('#1091#1082#1072#1079#1072#1090#1077#1083#1100' '#1080#1085#1089#1090#1088#1091#1082#1094#1080#1081')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        WordWrap = True
        OnClick = bThemeClick
      end
      object bThIntro5: TButton
        Left = 343
        Top = 83
        Width = 280
        Height = 70
        Caption = 
          #1050#1086#1076' '#1080' '#1076#1072#1085#1085#1099#1077'. '#1043#1077#1085#1077#1088#1072#1094#1080#1103' '#1082#1086#1076#1072' '#1072#1089#1089#1077#1084#1073#1083#1077#1088#1086#1084'. '#1042#1099#1087#1086#1083#1085#1077#1085#1080#1077' '#1082#1086#1076#1072' '#1087#1088#1086#1094#1077#1089 +
          #1089#1086#1088#1086#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        WordWrap = True
        OnClick = bThemeClick
      end
      object bThIntro6: TButton
        Left = 655
        Top = 83
        Width = 280
        Height = 70
        Caption = #1044#1080#1088#1077#1082#1090#1080#1074#1099' '#1086#1087#1088#1077#1076#1077#1083#1077#1085#1080#1103' '#1076#1072#1085#1085#1099#1093'. '#1057#1080#1085#1090#1072#1082#1089#1080#1089', '#1086#1073#1098#1103#1074#1083#1077#1085#1080#1077' '#171#1084#1072#1089#1089#1080#1074#1086#1074#187
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        WordWrap = True
        OnClick = bThemeClick
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 434
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
      object Label1: TLabel
        Left = 0
        Top = 60
        Width = 967
        Height = 32
        Align = alBottom
        Alignment = taCenter
        Caption = #1056#1077#1078#1080#1084' '#1086#1073#1091#1095#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 189
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
      Top = 483
      Width = 967
      Height = 160
      Align = alTop
      BevelOuter = bvNone
      Caption = #1057#1090#1077#1082' '#1080' '#1089#1090#1088#1091#1082#1090#1091#1088#1099', '#1089#1074#1103#1079#1072#1085#1085#1099#1077' '#1089' '#1085#1080#1084
      ShowCaption = False
      TabOrder = 4
      object Button1: TButton
        Left = 31
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
        OnClick = bThemeClick
      end
      object Button2: TButton
        Left = 343
        Top = 83
        Width = 280
        Height = 70
        Caption = #1055#1088#1077#1088#1099#1074#1072#1085#1080#1103'. '#1058#1072#1073#1083#1080#1094#1072' '#1074#1077#1082#1090#1086#1088#1086#1074' '#1087#1088#1077#1088#1099#1074#1072#1085#1080#1081'. '#1054#1073#1088#1072#1073#1086#1090#1082#1072' '#1087#1088#1077#1088#1099#1074#1072#1085#1080#1081
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        WordWrap = True
        OnClick = bThemeClick
      end
      object Button3: TButton
        Left = 343
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
        TabOrder = 2
        WordWrap = True
        OnClick = bThemeClick
      end
      object Button4: TButton
        Left = 655
        Top = 7
        Width = 280
        Height = 70
        Hint = #1042#1074#1077#1076#1077#1085#1080#1077' '#1074' '#1072#1089#1089#1077#1084#1073#1083#1077#1088
        Caption = 
          #1057#1086#1075#1083#1072#1096#1077#1085#1080#1077' '#1074#1099#1079#1086#1074#1072'. '#1057#1086#1075#1083#1072#1096#1077#1085#1080#1077' '#1074#1099#1079#1086#1074#1072' MS-DOS. '#1057#1086#1075#1083#1072#1096#1077#1085#1080#1103' pascalca' +
          'll,ccall,stdcall '#1080' '#1076#1088'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        WordWrap = True
        OnClick = bThemeClick
      end
      object Button5: TButton
        Left = 31
        Top = 83
        Width = 280
        Height = 70
        Caption = 
          #1057#1090#1077#1082#1086#1074#1099#1081' '#1092#1088#1077#1081#1084'. '#1055#1088#1086#1083#1086#1075' '#1080' '#1101#1087#1080#1083#1086#1075'. '#1042#1099#1076#1077#1083#1077#1085#1080#1077' '#1087#1072#1084#1103#1090#1080' '#1076#1083#1103' '#1083#1086#1082#1072#1083#1100#1085#1099#1093' ' +
          #1087#1077#1088#1077#1084#1077#1085#1085#1099#1093
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        WordWrap = True
        OnClick = bThemeClick
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 301
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
      object Panel9: TPanel
        Left = 1
        Top = 85
        Width = 965
        Height = 49
        Align = alTop
        Caption = #1057#1090#1088#1086#1082#1080' '#1080' '#1075#1088#1072#1092#1080#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitTop = 0
      end
      object Panel10: TPanel
        Left = 1
        Top = 1
        Width = 965
        Height = 84
        Align = alTop
        BevelOuter = bvNone
        Caption = #1057#1090#1088#1086#1082#1080' '#1080' '#1075#1088#1072#1092#1080#1082#1072
        ShowCaption = False
        TabOrder = 1
        ExplicitTop = -35
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 350
      Width = 967
      Height = 84
      Align = alTop
      BevelOuter = bvNone
      Caption = #1057#1090#1088#1086#1082#1080' '#1080' '#1075#1088#1072#1092#1080#1082#1072
      ShowCaption = False
      TabOrder = 6
      object Button6: TButton
        Left = 31
        Top = 7
        Width = 280
        Height = 70
        Hint = #1042#1074#1077#1076#1077#1085#1080#1077' '#1074' '#1072#1089#1089#1077#1084#1073#1083#1077#1088
        Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1074#1080#1076#1077#1086#1087#1072#1084#1103#1090#1100#1102
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        WordWrap = True
        OnClick = bThemeClick
      end
      object Button8: TButton
        Left = 343
        Top = 7
        Width = 280
        Height = 70
        Caption = #1057#1090#1088#1086#1082#1086#1074#1099#1077' '#1076#1072#1085#1085#1099#1077' '#1080' '#1084#1072#1089#1089#1080#1074#1099'. '#1050#1086#1084#1072#1085#1076#1099' '#1086#1073#1088#1072#1073#1086#1090#1082#1080' '#1089#1090#1088#1086#1082' '#1080' '#1084#1072#1089#1089#1080#1074#1086#1074
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        WordWrap = True
        OnClick = bThemeClick
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 400
    Top = 65512
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
    object mmiEnterTesting: TMenuItem
      Caption = #1056#1077#1078#1080#1084' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1103
      OnClick = mmiEnterTestingClick
    end
  end
end
