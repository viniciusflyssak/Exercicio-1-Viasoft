object frmPrincipal: TfrmPrincipal
  Left = 464
  Top = 249
  BorderStyle = bsNone
  Caption = 'Substituidor de texto'
  ClientHeight = 437
  ClientWidth = 665
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 65
    Width = 665
    Height = 372
    Align = alClient
    AutoSize = True
    TabOrder = 0
    object lblTextoAntigo: TLabel
      Left = 40
      Top = 19
      Width = 156
      Height = 25
      Caption = 'Texto antigo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTextoSubstituir: TLabel
      Left = 40
      Top = 78
      Width = 215
      Height = 25
      Caption = 'Texto a substituir:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTextoSubstituto: TLabel
      Left = 40
      Top = 131
      Width = 201
      Height = 25
      Caption = 'Texto substituto:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtTextoAntigo: TEdit
      Left = 202
      Top = 22
      Width = 439
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtTextoSubstituir: TEdit
      Left = 261
      Top = 78
      Width = 380
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtTextoSubstituto: TEdit
      Left = 261
      Top = 134
      Width = 380
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object mmoTextoResultante: TMemo
      Left = 40
      Top = 187
      Width = 601
      Height = 113
      Color = clSkyBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = []
      Lines.Strings = (
        'mmoTextoResultante')
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object pnlBotoes: TPanel
      Left = 1
      Top = 323
      Width = 663
      Height = 48
      Align = alBottom
      TabOrder = 4
      object btnFechar: TSpeedButton
        Left = 16
        Top = 9
        Width = 73
        Height = 32
        Caption = 'Fechar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnFecharClick
      end
      object btnExecutar: TSpeedButton
        Left = 575
        Top = 9
        Width = 73
        Height = 32
        Caption = 'Executar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnExecutarClick
      end
    end
  end
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 665
    Height = 65
    Align = alTop
    Caption = 'Substituidor de texto'
    Color = clBackground
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
end
