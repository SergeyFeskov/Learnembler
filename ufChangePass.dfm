object fChangePass: TfChangePass
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Learnembler'
  ClientHeight = 151
  ClientWidth = 334
  Color = clBtnFace
  Constraints.MaxHeight = 190
  Constraints.MaxWidth = 350
  Constraints.MinHeight = 190
  Constraints.MinWidth = 350
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
  object Panel1: TPanel
    Left = 0
    Top = 110
    Width = 334
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      334
      41)
    object bRegAcc: TButton
      Left = 102
      Top = 8
      Width = 129
      Height = 25
      Anchors = []
      Caption = #1057#1084#1077#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
      TabOrder = 0
      OnClick = bRegAccClick
    end
    object bRet: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103
      TabOrder = 1
      OnClick = bRetClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 334
    Height = 110
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 62
      Top = 59
      Width = 227
      Height = 42
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        227
        42)
      object lRepPass: TLabel
        Left = 0
        Top = 8
        Width = 209
        Height = 25
        Anchors = [akLeft]
        AutoSize = False
        Caption = #1055#1086#1074#1090#1086#1088#1080#1090#1077' '#1085#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100':'
      end
      object lRepEye: TLabel
        Left = 207
        Top = 24
        Width = 12
        Height = 13
        Caption = #55357#56385#65039
        OnClick = lEyeClick
      end
      object eRepPass: TEdit
        Left = 0
        Top = 21
        Width = 201
        Height = 21
        Align = alCustom
        Anchors = [akLeft]
        MaxLength = 20
        PasswordChar = '*'
        TabOrder = 0
        OnKeyPress = eRepPassKeyPress
      end
    end
    object pPass: TPanel
      Left = 62
      Top = 11
      Width = 227
      Height = 42
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        227
        42)
      object lPassword: TLabel
        Left = 0
        Top = 8
        Width = 209
        Height = 25
        Anchors = [akLeft]
        AutoSize = False
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100':'
      end
      object lEye: TLabel
        Left = 207
        Top = 24
        Width = 12
        Height = 13
        Caption = #55357#56385#65039
        OnClick = lEyeClick
      end
      object ePass: TEdit
        Left = 0
        Top = 21
        Width = 201
        Height = 21
        Align = alCustom
        Anchors = [akLeft]
        MaxLength = 20
        PasswordChar = '*'
        TabOrder = 0
        OnKeyPress = ePassKeyPress
      end
    end
  end
end
