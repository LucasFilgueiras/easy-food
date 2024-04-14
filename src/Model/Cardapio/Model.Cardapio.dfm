object modelCardapio: TmodelCardapio
  Height = 480
  Width = 640
  object QBuscaCardapio: TFDQuery
    Active = True
    Connection = modelConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM cardapio ORDER BY id ASC;')
    Left = 120
    Top = 112
  end
  object QMaxId: TFDQuery
    Active = True
    Connection = modelConexao.FDConn
    SQL.Strings = (
      'SELECT MAX(id) AS codigo FROM cardapio;')
    Left = 264
    Top = 112
  end
end
