unit Controller.Pedido_venda;

interface

uses Model.Pedido_venda, System.SysUtils, System.Variants, System.Classes;

procedure gerarContasAReceber(origemParam: String; idParam: String);

implementation

procedure gerarContasAReceber(origemParam: String; idParam: String);
var
  modelPedidoVenda: TmodelPedidoVenda;
begin
  modelPedidoVenda := TmodelPedidoVenda.Create(nil);
  try
    modelPedidoVenda.QGerarFinanceiro.SQL.Clear;
    modelPedidoVenda.QGerarFinanceiro.SQL.Add('INSERT INTO contas_a_receber(origem, valor) VALUES (:origem, (SELECT preco FROM produto WHERE id=:id))');
    modelPedidoVenda.QGerarFinanceiro.ParamByName('origem').AsString := 'Pedido de venda(' + origemParam + ')';
    modelPedidoVenda.QGerarFinanceiro.ParamByName('id').AsInteger := StrToInt(idParam);
    modelPedidoVenda.QGerarFinanceiro.ExecSQL;
  finally
    modelPedidoVenda.Free;
  end;
end;

end.
