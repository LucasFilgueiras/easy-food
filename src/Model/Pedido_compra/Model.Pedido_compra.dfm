object modelPedidoCompra: TmodelPedidoCompra
  Height = 480
  Width = 640
  object QBuscaPedidoCompra: TFDQuery
    Active = True
    Connection = modelConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM pedido_compra ORDER BY id ASC;')
    Left = 96
    Top = 80
  end
  object QMaxId: TFDQuery
    Active = True
    Connection = modelConexao.FDConn
    SQL.Strings = (
      'SELECT MAX(id) AS codigo FROM pedido_compra;')
    Left = 264
    Top = 80
  end
  object QGerarFinanceiro: TFDQuery
    Connection = modelConexao.FDConn
    SQL.Strings = (
      '')
    Left = 392
    Top = 80
  end
end
