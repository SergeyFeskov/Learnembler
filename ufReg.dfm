object fReg: TfReg
  Left = 0
  Top = 0
  Caption = 'Learnembler'
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lReg: TLabel
    Left = 219
    Top = 75
    Width = 109
    Height = 25
    Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
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
  object Panel1: TPanel
    Left = 0
    Top = 263
    Width = 548
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      548
      41)
    object bRegisterAccount: TButton
      Left = 208
      Top = 8
      Width = 129
      Height = 25
      Anchors = []
      Caption = #1047#1072#1088#1077#1075#1077#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100#1089#1103
      TabOrder = 0
      OnClick = bRegisterAccountClick
    end
    object bRet: TButton
      Left = 48
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
    Top = 100
    Width = 548
    Height = 163
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object pName: TPanel
      Left = 174
      Top = 10
      Width = 201
      Height = 41
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        201
        41)
      object lUserName: TLabel
        Left = 0
        Top = 7
        Width = 201
        Height = 18
        Anchors = []
        AutoSize = False
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1080#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103':'
      end
      object eUserName: TEdit
        Left = 0
        Top = 20
        Width = 201
        Height = 21
        Align = alCustom
        Anchors = [akLeft]
        MaxLength = 30
        TabOrder = 0
        OnKeyPress = eUserNameKeyPress
      end
    end
    object pPass: TPanel
      Left = 174
      Top = 57
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
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100':'
      end
      object lEye: TLabel
        Left = 207
        Top = 29
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
    object Panel3: TPanel
      Left = 174
      Top = 105
      Width = 227
      Height = 42
      BevelOuter = bvNone
      TabOrder = 2
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
        Caption = #1055#1086#1074#1090#1086#1088#1080#1090#1077' '#1087#1072#1088#1086#1083#1100':'
      end
      object lRepEye: TLabel
        Left = 207
        Top = 24
        Width = 12
        Height = 13
        Caption = #55357#56385#65039
        OnClick = lRepEyeClick
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
  end
end
