object modelPedidoVenda: TmodelPedidoVenda
  Height = 480
  Width = 640
  object QBuscaPedidoVenda: TFDQuery
    Active = True
    Connection = modelConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM pedido_venda ORDER BY id ASC;')
    Left = 136
    Top = 144
  end
  object QMaxId: TFDQuery
    Active = True
    Connection = modelConexao.FDConn
    SQL.Strings = (
      'SELECT MAX(id) AS codigo FROM pedido_venda;')
    Left = 288
    Top = 144
  end
  object QGerarFinanceiro: TFDQuery
    Connection = modelConexao.FDConn
    SQL.Strings = (
      '')
    Left = 408
    Top = 152
  end
end
