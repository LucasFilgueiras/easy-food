inherited frmCardapio: TfrmCardapio
  Caption = 'Card'#225'pio'
  ExplicitWidth = 722
  ExplicitHeight = 549
  TextHeight = 15
  inherited pgcFormulario: TPageControl
    ActivePage = tabDados
    ExplicitWidth = 706
    ExplicitHeight = 510
    inherited tabDados: TTabSheet
      ExplicitWidth = 702
      ExplicitHeight = 481
      object lblCodigo: TLabel [0]
        Left = 32
        Top = 120
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
      end
      object lblNome: TLabel [1]
        Left = 32
        Top = 184
        Width = 33
        Height = 15
        Caption = 'Nome'
      end
      object lblValidade: TLabel [2]
        Left = 32
        Top = 248
        Width = 44
        Height = 15
        Caption = 'Validade'
      end
      inherited pnlTopo: TPanel
        Width = 702
        ExplicitWidth = 698
        inherited lblTitulo: TLabel
          Width = 700
          Caption = 'Card'#225'pio'
          ExplicitWidth = 98
        end
        inherited navDados: TDBNavigator
          Width = 700
          DataSource = DSBusca
          Hints.Strings = ()
          OnClick = navDadosClick
          ExplicitWidth = 696
        end
      end
      object edtCodigo: TDBEdit
        Left = 32
        Top = 141
        Width = 121
        Height = 23
        DataField = 'ID'
        DataSource = DSBusca
        Enabled = False
        TabOrder = 1
      end
      object edtNome: TDBEdit
        Left = 32
        Top = 205
        Width = 537
        Height = 23
        DataField = 'NOME'
        DataSource = DSBusca
        TabOrder = 2
      end
      object edtValidade: TDBEdit
        Left = 32
        Top = 269
        Width = 121
        Height = 23
        DataField = 'VALIDADE'
        DataSource = DSBusca
        TabOrder = 3
      end
    end
    inherited tabBusca: TTabSheet
      ExplicitWidth = 702
      ExplicitHeight = 481
      inherited pnlPesquisa: TPanel
        Width = 702
        inherited edtPesquisa: TEdit
          OnChange = edtPesquisaChange
        end
      end
      inherited gridBusca: TDBGrid
        Width = 702
        Height = 374
      end
      object pnlFiltro: TPanel
        Left = 0
        Top = 431
        Width = 702
        Height = 50
        Align = alBottom
        TabOrder = 2
        object RGFiltro: TRadioGroup
          Left = 1
          Top = 1
          Width = 700
          Height = 48
          Align = alClient
          Caption = 'Pesquisar por:'
          Columns = 8
          ItemIndex = 1
          Items.Strings = (
            'ID'
            'NOME')
          TabOrder = 0
        end
      end
    end
  end
  inherited DSBusca: TDataSource
    DataSet = modelCardapio.QBuscaCardapio
  end
end
