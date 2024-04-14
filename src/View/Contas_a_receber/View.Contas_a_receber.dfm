inherited frmContasAReceber: TfrmContasAReceber
  Caption = 'Contas a receber'
  ExplicitWidth = 722
  ExplicitHeight = 549
  TextHeight = 15
  inherited pgcFormulario: TPageControl
    ActivePage = tabDados
    inherited tabDados: TTabSheet
      OnShow = tabDadosShow
      ExplicitWidth = 702
      ExplicitHeight = 481
      object lblCodigo: TLabel [0]
        Left = 32
        Top = 112
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
      end
      object lblOrigem: TLabel [1]
        Left = 32
        Top = 176
        Width = 40
        Height = 15
        Caption = 'Origem'
      end
      object lblValor: TLabel [2]
        Left = 32
        Top = 243
        Width = 26
        Height = 15
        Caption = 'Valor'
      end
      object lblStatus: TLabel [3]
        Left = 32
        Top = 320
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
        Width = 702
        inherited lblTitulo: TLabel
          Width = 704
          Caption = 'Contas a receber'
          ExplicitWidth = 184
        end
        inherited navDados: TDBNavigator
          DataSource = DSBusca
          Hints.Strings = ()
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
      object edtOrigem: TDBEdit
        Left = 32
        Top = 197
        Width = 530
        Height = 23
        DataField = 'ORIGEM'
        DataSource = DSBusca
        Enabled = False
        TabOrder = 2
      end
      object edtValor: TDBEdit
        Left = 32
        Top = 264
        Width = 121
        Height = 23
        DataField = 'VALOR'
        DataSource = DSBusca
        Enabled = False
        TabOrder = 3
      end
      object btnReceber: TBitBtn
        Left = 32
        Top = 360
        Width = 75
        Height = 25
        Caption = 'Receber'
        TabOrder = 4
        OnClick = btnReceberClick
      end
    end
    inherited tabBusca: TTabSheet
      ExplicitWidth = 702
      ExplicitHeight = 481
      inherited pnlPesquisa: TPanel
        Width = 702
      end
      inherited gridBusca: TDBGrid
        Width = 702
        Height = 424
      end
    end
  end
  inherited DSBusca: TDataSource
    DataSet = modelContasAReceber.QBuscaContasAReceber
  end
end
