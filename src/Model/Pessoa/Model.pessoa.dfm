object modelPessoa: TmodelPessoa
  Height = 480
  Width = 640
  object QBuscaPessoa: TFDQuery
    Active = True
    Connection = modelConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM pessoa ORDER BY id ASC')
    Left = 96
    Top = 168
    object QBuscaPessoaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QBuscaPessoaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QBuscaPessoaTIPO_PESSOA: TIntegerField
      FieldName = 'TIPO_PESSOA'
      Origin = 'TIPO_PESSOA'
      Required = True
    end
    object QBuscaPessoaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object QBuscaPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
  end
  object QMaxId: TFDQuery
    Active = True
    Connection = modelConexao.FDConn
    SQL.Strings = (
      'SELECT MAX(ID) AS codigo FROM pessoa;')
    Left = 232
    Top = 168
    object QMaxIdCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QTipoPessoa: TFDQuery
    Active = True
    Connection = modelConexao.FDConn
    SQL.Strings = (
      'SELECT * FROM tipo_pessoa;')
    Left = 344
    Top = 176
    object QTipoPessoaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTipoPessoaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
end
