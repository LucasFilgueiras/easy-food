unit API;

interface

uses Horse, Horse.CORS, Model.Cardapio, System.JSON, Vcl.Dialogs;

implementation

begin
  THorse.Use(CORS);

  THorse.Get('/cardapio/:id',
    procedure(Req: THorseRequest; Res: THorseResponse)
    var
      modelCardapio: TmodelCardapio;
      fieldName, ColumnName, ColumnValue: String;
      idCardapio, I: Integer;
      LJSONObject: TJSONObject;
    begin
      try
        idCardapio := Req.Params.Field('id').AsInteger;

        modelCardapio := TmodelCardapio.Create(nil);
        modelCardapio.QBuscaCardapio.SQL.Clear;
        modelCardapio.QBuscaCardapio.SQL.Add
          ('SELECT DISTINCT c.id AS idCardapio, c.nome AS nomeCardapio, c.validade AS validadeCardapio FROM cardapio c WHERE c.id=:id');
        modelCardapio.QBuscaCardapio.ParamByName('id').AsInteger := idCardapio;
        modelCardapio.QBuscaCardapio.Open;

        while not modelCardapio.QBuscaCardapio.Eof do
        begin
          LJSONObject := TJSONObject.Create;

          for I := 0 to modelCardapio.QBuscaCardapio.FieldCount - 1 do
          begin
            ColumnName := modelCardapio.QBuscaCardapio.FieldDefs[I].Name;
            ColumnValue := modelCardapio.QBuscaCardapio.FieldByName
              (ColumnName).AsString;
            LJSONObject.AddPair(TJSONPair.Create(TJSONString.Create(ColumnName),
              TJSONString.Create(ColumnValue)));
          end;

          modelCardapio.QBuscaCardapio.Next;
        end;
        modelCardapio.QBuscaCardapio.EndBatch;
      finally
        modelCardapio.Free;
        Res.Send(LJSONObject.ToJSON);
      end;
    end);

  THorse.Get('/cardapio/produtos/:id',
    procedure(Req: THorseRequest; Res: THorseResponse)
    var
      modelCardapio: TmodelCardapio;
      fieldName, ColumnName, ColumnValue: String;
      idCardapio, I: Integer;
      LJSONObject: TJSONObject;
      Cardapio: TJSONArray;
    begin
      try
        idCardapio := Req.Params.Field('id').AsInteger;

        modelCardapio := TmodelCardapio.Create(nil);
        modelCardapio.QBuscaCardapio.SQL.Clear;
        modelCardapio.QBuscaCardapio.SQL.Add
          ('SELECT DISTINCT p.id AS idProduto, p.nome AS nomeProduto, p.preco AS precoProduto, p.descricao AS descricaoProduto FROM produto p INNER JOIN cardapio c ON p.cardapio = c.id WHERE c.id=:id');
        modelCardapio.QBuscaCardapio.ParamByName('id').AsInteger := idCardapio;
        modelCardapio.QBuscaCardapio.Open;

        Cardapio := TJSONArray.Create;

        while not modelCardapio.QBuscaCardapio.Eof do
        begin
          LJSONObject := TJSONObject.Create;

          for I := 0 to modelCardapio.QBuscaCardapio.FieldCount - 1 do
          begin
            ColumnName := modelCardapio.QBuscaCardapio.FieldDefs[I].Name;
            ColumnValue := modelCardapio.QBuscaCardapio.FieldByName
              (ColumnName).AsString;
            LJSONObject.AddPair(TJSONPair.Create(TJSONString.Create(ColumnName),
              TJSONString.Create(ColumnValue)));
          end;

          Cardapio.Add(LJSONObject);
          modelCardapio.QBuscaCardapio.Next;
        end;

        modelCardapio.QBuscaCardapio.EndBatch;

      finally
        modelCardapio.Free;
        Res.Send(Cardapio.ToJSON);
      end;
    end);

  THorse.Listen(9000);

end.

  end.
