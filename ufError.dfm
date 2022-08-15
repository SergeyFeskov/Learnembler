object fError: TfError
  Left = 0
  Top = 0
  Caption = 'ErorDialog'
  ClientHeight = 111
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pError: TPanel
    Left = 0
    Top = 0
    Width = 284
    Height = 25
    Align = alTop
    Caption = 'ERROR!'
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 284
    Height = 86
    Align = alClient
    TabOrder = 1
    object memErrorMess: TMemo
      Left = 1
      Top = 1
      Width = 282
      Height = 59
      Align = alClient
      ImeName = 'memErrorMess'
      TabOrder = 0
      ExplicitLeft = 17
      ExplicitTop = 25
    end
    object bReturn: TButton
      Left = 1
      Top = 60
      Width = 282
      Height = 25
      Align = alBottom
      Caption = #1042#1077#1088#1085#1091#1090#1100#1089#1103
      TabOrder = 1
      OnClick = bReturnClick
    end
  end
end
