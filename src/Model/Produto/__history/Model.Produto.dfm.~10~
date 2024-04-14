object modelProduto: TmodelProduto
  Height = 480
  Width = 640
  object QBuscaProduto: TFDQuery
    Active = True
    Connection = modelConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM produto ORDER BY id ASC;')
    Left = 104
    Top = 88
  end
  object QMaxId: TFDQuery
    Active = True
    Connection = modelConexao.FDConn
    SQL.Strings = (
      'SELECT MAX(ID) AS codigo FROM produto;')
    Left = 240
    Top = 88
  end
end
