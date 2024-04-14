unit Model.Pedido_venda;

interface

uses
  System.SysUtils, System.Classes, Model.conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TmodelPedidoVenda = class(TDataModule)
    QBuscaPedidoVenda: TFDQuery;
    QMaxId: TFDQuery;
    QGerarFinanceiro: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  modelPedidoVenda: TmodelPedidoVenda;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
