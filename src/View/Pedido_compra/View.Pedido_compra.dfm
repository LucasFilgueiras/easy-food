inherited frmPedidoCompra: TfrmPedidoCompra
  Caption = 'Pedido de compra'
  ClientWidth = 714
  TextHeight = 15
  inherited pgcFormulario: TPageControl
    Width = 714
    inherited tabDados: TTabSheet
      ExplicitHeight = 481
      object lblCodigo: TLabel [0]
        Left = 40
        Top = 120
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
      end
      object lblNome: TLabel [1]
        Left = 40
        Top = 184
        Width = 33
        Height = 15
        Caption = 'Nome'
      end
      object lblData: TLabel [2]
        Left = 40
        Top = 248
        Width = 24
        Height = 15
        Caption = 'Data'
      end
      object lblValor: TLabel [3]
        Left = 40
        Top = 312
        Width = 26
        Height = 15
        Caption = 'Valor'
      end
      inherited pnlTopo: TPanel
        ExplicitWidth = 702
        inherited lblTitulo: TLabel
          Width = 197
          Caption = 'Pedido de compra'
          ExplicitWidth = 197
        end
        inherited navDados: TDBNavigator
          DataSource = DSBusca
          Hints.Strings = ()
          OnClick = navDadosClick
          ExplicitTop = 39
        end
      end
      object edtCodigo: TDBEdit
        Left = 40
        Top = 141
        Width = 121
        Height = 23
        DataField = 'ID'
        DataSource = DSBusca
        Enabled = False
        TabOrder = 1
      end
      object edtNome: TDBEdit
        Left = 40
        Top = 205
        Width = 530
        Height = 23
        DataField = 'NOME'
        DataSource = DSBusca
        TabOrder = 2
      end
      object edtData: TDBEdit
        Left = 40
        Top = 269
        Width = 121
        Height = 23
        DataField = 'DATA'
        DataSource = DSBusca
        TabOrder = 3
      end
      object edtValor: TDBEdit
        Left = 40
        Top = 333
        Width = 121
        Height = 23
        DataField = 'VALOR'
        DataSource = DSBusca
        TabOrder = 4
      end
    end
    inherited tabBusca: TTabSheet
      ExplicitHeight = 481
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
        Height = 49
        Align = alBottom
        TabOrder = 2
        ExplicitWidth = 702
        object RGFiltro: TRadioGroup
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 698
          Height = 41
          Align = alClient
          Caption = 'Pesquisar por:'
          Columns = 8
          ItemIndex = 1
          Items.Strings = (
            'ID'
            'NOME')
          TabOrder = 0
          ExplicitWidth = 694
        end
      end
    end
  end
  inherited DSBusca: TDataSource
    DataSet = modelPedidoCompra.QBuscaPedidoCompra
  end
end
