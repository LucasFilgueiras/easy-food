inherited frmProduto: TfrmProduto
  Caption = 'Produto'
  Position = poMainFormCenter
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
        Left = 192
        Top = 120
        Width = 33
        Height = 15
        Caption = 'Nome'
      end
      object lblDescricao: TLabel [2]
        Left = 32
        Top = 184
        Width = 51
        Height = 15
        Caption = 'Descri'#231#227'o'
      end
      object lblPreco: TLabel [3]
        Left = 32
        Top = 248
        Width = 30
        Height = 15
        Caption = 'Pre'#231'o'
      end
      object lblCardapio: TLabel [4]
        Left = 192
        Top = 248
        Width = 48
        Height = 15
        Caption = 'Card'#225'pio'
      end
      inherited pnlTopo: TPanel
        Width = 702
        ExplicitWidth = 698
        inherited lblTitulo: TLabel
          Width = 700
          Caption = 'Produto'
          ExplicitWidth = 88
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
        Left = 192
        Top = 141
        Width = 393
        Height = 23
        DataField = 'NOME'
        DataSource = DSBusca
        TabOrder = 2
      end
      object edtDescricao: TDBEdit
        Left = 32
        Top = 205
        Width = 553
        Height = 23
        DataField = 'DESCRICAO'
        DataSource = DSBusca
        TabOrder = 3
      end
      object edtPreco: TDBEdit
        Left = 32
        Top = 269
        Width = 121
        Height = 23
        DataField = 'PRECO'
        DataSource = DSBusca
        TabOrder = 4
      end
      object CBCardapio: TDBLookupComboBox
        Left = 192
        Top = 269
        Width = 145
        Height = 23
        DataField = 'CARDAPIO'
        DataSource = DSBusca
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = DSCardapio
        TabOrder = 5
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
      object pnlFiltroPesquisa: TPanel
        Left = 0
        Top = 431
        Width = 702
        Height = 50
        Align = alBottom
        TabOrder = 2
        object RGFiltro: TRadioGroup
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 694
          Height = 42
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
    DataSet = modelProduto.QBuscaProduto
    Left = 628
    Top = 378
  end
  object DSCardapio: TDataSource
    DataSet = modelCardapio.QBuscaCardapio
    Left = 524
    Top = 378
  end
end
