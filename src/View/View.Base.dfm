object frmBase: TfrmBase
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio base'
  ClientHeight = 512
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pgcFormulario: TPageControl
    Left = 0
    Top = 0
    Width = 714
    Height = 512
    ActivePage = tabBusca
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 710
    ExplicitHeight = 511
    object tabDados: TTabSheet
      Caption = 'Dados'
      object pnlTopo: TPanel
        Left = 0
        Top = 0
        Width = 706
        Height = 81
        Align = alTop
        TabOrder = 0
        object lblTitulo: TLabel
          Left = 1
          Top = 1
          Width = 704
          Height = 32
          Align = alTop
          Alignment = taCenter
          Caption = 'T'#237'tulo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 62
        end
        object navDados: TDBNavigator
          Left = 1
          Top = 48
          Width = 704
          Height = 32
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel, nbRefresh]
          Align = alBottom
          TabOrder = 0
        end
      end
    end
    object tabBusca: TTabSheet
      Caption = 'Busca'
      ImageIndex = 1
      object pnlPesquisa: TPanel
        Left = 0
        Top = 0
        Width = 706
        Height = 57
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 702
        object lblPesquisa: TLabel
          Left = 16
          Top = 16
          Width = 49
          Height = 15
          Alignment = taCenter
          Caption = 'Pesquise:'
          Layout = tlCenter
        end
        object edtPesquisa: TEdit
          Left = 71
          Top = 13
          Width = 594
          Height = 23
          TabOrder = 0
        end
      end
      object gridBusca: TDBGrid
        Left = 0
        Top = 57
        Width = 706
        Height = 425
        Align = alClient
        DataSource = DSBusca
        DrawingStyle = gdsClassic
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
  end
  object DSBusca: TDataSource
    Left = 636
    Top = 346
  end
end
