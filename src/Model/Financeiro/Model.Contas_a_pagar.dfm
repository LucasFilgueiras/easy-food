object modelContasAPagar: TmodelContasAPagar
  Height = 480
  Width = 640
  object QBuscaContasAPagar: TFDQuery
    Active = True
    Connection = modelConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM contas_a_pagar ORDER BY id ASC;')
    Left = 112
    Top = 80
    object QBuscaContasAPagarID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaContasAPagarORIGEM: TStringField
      FieldName = 'ORIGEM'
      Origin = 'ORIGEM'
      Required = True
      Size = 100
    end
    object QBuscaContasAPagarVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object QBuscaContasAPagarSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
    end
  end
  object QPagarConta: TFDQuery
    Connection = modelConexao.FDConn
    Left = 248
    Top = 80
  end
end
