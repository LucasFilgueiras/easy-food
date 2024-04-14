object modelContasAReceber: TmodelContasAReceber
  Height = 480
  Width = 640
  object QBuscaContasAReceber: TFDQuery
    Active = True
    Connection = modelConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM contas_a_receber ORDER BY id ASC;')
    Left = 128
    Top = 112
  end
  object QReceberConta: TFDQuery
    Connection = modelConexao.FDConn
    Left = 288
    Top = 112
  end
end
