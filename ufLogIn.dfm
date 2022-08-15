object fLogIn: TfLogIn
  Left = 10
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Learnambler'
  ClientHeight = 304
  ClientWidth = 548
  Color = clBtnFace
  Constraints.MaxHeight = 343
  Constraints.MaxWidth = 564
  Constraints.MinHeight = 343
  Constraints.MinWidth = 564
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  DesignSize = (
    548
    304)
  PixelsPerInch = 96
  TextHeight = 13
  object lAppName: TLabel
    Left = 0
    Top = 0
    Width = 548
    Height = 100
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
  end
  object lUserName: TLabel
    Left = 174
    Top = 96
    Width = 201
    Height = 34
    Anchors = []
    AutoSize = False
    Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103':'
  end
  object lPassword: TLabel
    Left = 174
    Top = 136
    Width = 209
    Height = 25
    Anchors = []
    AutoSize = False
    Caption = #1055#1072#1088#1086#1083#1100':'
  end
  object lAlternativeOptions: TLabel
    Left = 183
    Top = 237
    Width = 181
    Height = 13
    Caption = #1053#1077#1090' '#1072#1082#1082#1072#1091#1085#1090#1072'? '#1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1091#1081#1090#1077#1089#1100'!'
  end
  object lEye: TLabel
    Left = 378
    Top = 153
    Width = 12
    Height = 13
    Caption = #55357#56385#65039
    OnClick = lEyeClick
  end
  object eUserName: TEdit
    Left = 174
    Top = 109
    Width = 201
    Height = 21
    Align = alCustom
    Anchors = []
    MaxLength = 30
    TabOrder = 0
    OnKeyPress = eUserNameKeyPress
  end
  object ePass: TEdit
    Left = 174
    Top = 150
    Width = 201
    Height = 21
    Align = alCustom
    Anchors = []
    MaxLength = 20
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = ePassKeyPress
  end
  object bEnterAccount: TButton
    Left = 237
    Top = 187
    Width = 75
    Height = 25
    Anchors = []
    Caption = #1042#1086#1081#1090#1080
    TabOrder = 2
    OnClick = bEnterAccountClick
  end
  object bRegistration: TButton
    Left = 225
    Top = 256
    Width = 97
    Height = 25
    Anchors = []
    Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
    TabOrder = 3
    OnClick = bRegistrationClick
  end
end
