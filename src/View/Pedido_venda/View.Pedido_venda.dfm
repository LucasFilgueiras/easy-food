inherited frmPedidoVenda: TfrmPedidoVenda
  Caption = 'Pedido de venda'
  ClientHeight = 512
  ClientWidth = 714
  TextHeight = 15
  inherited pgcFormulario: TPageControl
    Width = 714
    Height = 512
    inherited tabDados: TTabSheet
      object lblCodigo: TLabel [0]
        Left = 32
        Top = 112
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
      end
      object lblProduto: TLabel [1]
        Left = 32
        Top = 176
        Width = 43
        Height = 15
        Caption = 'Produto'
      end
      object lblData: TLabel [2]
        Left = 32
        Top = 238
        Width = 24
        Height = 15
        Caption = 'Data'
      end
      inherited pnlTopo: TPanel
        inherited lblTitulo: TLabel
          Width = 181
          Caption = 'Pedido de venda'
          ExplicitWidth = 181
        end
        inherited navDados: TDBNavigator
          DataSource = DSBusca
          Hints.Strings = ()
          OnClick = navDadosClick
        end
      end
      object edtCodigo: TDBEdit
        Left = 32
        Top = 133
        Width = 121
        Height = 23
        DataField = 'ID'
        DataSource = DSBusca
        Enabled = False
        TabOrder = 1
      end
      object edtData: TDBEdit
        Left = 32
        Top = 259
        Width = 121
        Height = 23
        DataField = 'DATA'
        DataSource = DSBusca
        TabOrder = 2
      end
      object CBProduto: TDBLookupComboBox
        Left = 32
        Top = 197
        Width = 225
        Height = 23
        DataField = 'PRODUTO'
        DataSource = DSBusca
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = DSProduto
        TabOrder = 3
      end
    end
    inherited tabBusca: TTabSheet
      inherited pnlPesquisa: TPanel
        inherited edtPesquisa: TEdit
          OnChange = edtPesquisaChange
        end
      end
      inherited gridBusca: TDBGrid
        Height = 375
      end
      object pnlFiltro: TPanel
        Left = 0
        Top = 432
        Width = 706
        Height = 50
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 431
        ExplicitWidth = 702
        object RGFiltro: TRadioGroup
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 698
          Height = 42
          Align = alClient
          Caption = 'Pesquisar por:'
          Columns = 8
          ItemIndex = 1
          Items.Strings = (
            'ID'
            'PRODUTO')
          TabOrder = 0
          ExplicitWidth = 694
        end
      end
    end
  end
  inherited DSBusca: TDataSource
    DataSet = modelPedidoVenda.QBuscaPedidoVenda
  end
  object DSProduto: TDataSource
    DataSet = modelProduto.QBuscaProduto
    Left = 524
    Top = 346
  end
end