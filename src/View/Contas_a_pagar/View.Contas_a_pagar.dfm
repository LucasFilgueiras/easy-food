inherited frmContasAPagar: TfrmContasAPagar
  Caption = 'Contas a pagar'
  ClientWidth = 714
  TextHeight = 15
  inherited pgcFormulario: TPageControl
    Width = 714
    ActivePage = tabDados
    inherited tabDados: TTabSheet
      OnShow = tabDadosShow
      ExplicitHeight = 481
      object lblCodigo: TLabel [0]
        Left = 32
        Top = 123
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
      end
      object lblOrigem: TLabel [1]
        Left = 32
        Top = 187
        Width = 40
        Height = 15
        Caption = 'Origem'
      end
      object lblValor: TLabel [2]
        Left = 32
        Top = 251
        Width = 26
        Height = 15
        Caption = 'Valor'
      end
      object lblStatus: TLabel [3]
        Left = 32
        Top = 328
        Width = 48
        Height = 15
        Caption = 'lblStatus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited pnlTopo: TPanel
        ExplicitWidth = 702
        inherited lblTitulo: TLabel
          Width = 704
          Caption = 'Contas a pagar'
          ExplicitWidth = 165
        end
        inherited navDados: TDBNavigator
          DataSource = DSBusca
          Hints.Strings = ()
        end
      end
      object edtCodigo: TDBEdit
        Left = 32
        Top = 144
        Width = 121
        Height = 23
        DataField = 'ID'
        DataSource = DSBusca
        Enabled = False
        TabOrder = 1
      end
      object edtOrigem: TDBEdit
        Left = 32
        Top = 208
        Width = 530
        Height = 23
        DataField = 'ORIGEM'
        DataSource = DSBusca
        Enabled = False
        TabOrder = 2
      end
      object edtValor: TDBEdit
        Left = 32
        Top = 272
        Width = 121
        Height = 23
        DataField = 'VALOR'
        DataSource = DSBusca
        Enabled = False
        TabOrder = 3
      end
      object btnPagar: TBitBtn
        Left = 32
        Top = 368
        Width = 75
        Height = 25
        Caption = 'Pagar'
        TabOrder = 4
        OnClick = btnPagarClick
      end
    end
    inherited tabBusca: TTabSheet
      ExplicitHeight = 481
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
            'ORIGEM')
          TabOrder = 0
          ExplicitLeft = 264
          ExplicitTop = -24
          ExplicitWidth = 185
          ExplicitHeight = 105
        end
      end
    end
  end
  inherited DSBusca: TDataSource
    DataSet = modelContasAPagar.QBuscaContasAPagar
  end
end
