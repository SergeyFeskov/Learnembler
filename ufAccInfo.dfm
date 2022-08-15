object fAccInfo: TfAccInfo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Learnembler'
  ClientHeight = 191
  ClientWidth = 384
  Color = clBtnFace
  Constraints.MaxHeight = 230
  Constraints.MaxWidth = 400
  Constraints.MinHeight = 230
  Constraints.MinWidth = 400
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 384
    Height = 191
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 384
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel3'
      ShowCaption = False
      TabOrder = 0
      object Label1: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Width = 364
        Height = 32
        Margins.Left = 10
        Margins.Right = 10
        Align = alTop
        Caption = #1048#1052#1071' '#1055#1054#1051#1068#1047#1054#1042#1040#1058#1045#1051#1071':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 246
      end
      object eName: TEdit
        Left = 11
        Top = 42
        Width = 190
        Height = 21
        ReadOnly = True
        TabOrder = 0
        Text = #39#1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103#39
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 72
      Width = 384
      Height = 72
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel3'
      ShowCaption = False
      TabOrder = 1
      object Label2: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Width = 364
        Height = 32
        Margins.Left = 10
        Margins.Right = 10
        Align = alTop
        Caption = #1055#1040#1056#1054#1051#1068':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 98
      end
      object lEye: TLabel
        Left = 205
        Top = 46
        Width = 12
        Height = 13
        Caption = #55357#56385#65039
        OnClick = lEyeClick
      end
      object ePass: TEdit
        Left = 9
        Top = 42
        Width = 190
        Height = 21
        PasswordChar = '*'
        ReadOnly = True
        TabOrder = 0
        Text = #39#1055#1072#1088#1086#1083#1100#39
      end
      object Button1: TButton
        Left = 239
        Top = 40
        Width = 129
        Height = 25
        Caption = #1057#1084#1077#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
    end
    object Button2: TButton
      Left = 0
      Top = 144
      Width = 384
      Height = 47
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Caption = #1055#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
  end
end
