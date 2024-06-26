program EasyFood;

uses
  Vcl.Forms,
  View.Principal in 'src\View\View.Principal.pas' {frmPrincipal},
  Model.conexao in 'src\Model\conexao\Model.conexao.pas' {modelConexao: TDataModule},
  Model.pessoa in 'src\Model\pessoa\Model.pessoa.pas' {modelPessoa: TDataModule},
  View.Base in 'src\View\View.Base.pas' {frmBase},
  View.Pessoa in 'src\View\Pessoa\View.Pessoa.pas' {frmPessoa},
  View.Produto in 'src\View\Produto\View.Produto.pas' {frmProduto},
  Model.Produto in 'src\Model\Produto\Model.Produto.pas' {modelProduto: TDataModule},
  View.Contas_a_pagar in 'src\View\Contas_a_pagar\View.Contas_a_pagar.pas' {frmContasAPagar},
  Model.Contas_a_pagar in 'src\Model\Financeiro\Model.Contas_a_pagar.pas' {modelContasAPagar: TDataModule},
  View.Contas_a_receber in 'src\View\Contas_a_receber\View.Contas_a_receber.pas' {frmContasAReceber},
  Model.Contas_a_receber in 'src\Model\Financeiro\Model.Contas_a_receber.pas' {modelContasAReceber: TDataModule},
  View.Cardapio in 'src\View\Cardapio\View.Cardapio.pas' {frmCardapio},
  Model.Cardapio in 'src\Model\Cardapio\Model.Cardapio.pas' {modelCardapio: TDataModule},
  API in 'src\API\API.pas',
  View.Pedido_venda in 'src\View\Pedido_venda\View.Pedido_venda.pas' {frmPedidoVenda},
  Model.Pedido_venda in 'src\Model\Pedido_venda\Model.Pedido_venda.pas' {modelPedidoVenda: TDataModule},
  View.Pedido_compra in 'src\View\Pedido_compra\View.Pedido_compra.pas' {frmPedidoCompra},
  Model.Pedido_compra in 'src\Model\Pedido_compra\Model.Pedido_compra.pas' {modelPedidoCompra: TDataModule},
  Controller.Pedido_venda in 'src\Controller\Pedido_venda\Controller.Pedido_venda.pas',
  Controller.Pedido_compra in 'src\Controller\Pedido_compra\Controller.Pedido_compra.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TmodelConexao, modelConexao);
  Application.CreateForm(TmodelPessoa, modelPessoa);
  Application.CreateForm(TfrmBase, frmBase);
  Application.CreateForm(TfrmPessoa, frmPessoa);
  Application.CreateForm(TfrmProduto, frmProduto);
  Application.CreateForm(TmodelProduto, modelProduto);
  Application.CreateForm(TfrmContasAPagar, frmContasAPagar);
  Application.CreateForm(TmodelContasAPagar, modelContasAPagar);
  Application.CreateForm(TfrmContasAReceber, frmContasAReceber);
  Application.CreateForm(TmodelContasAReceber, modelContasAReceber);
  Application.CreateForm(TfrmCardapio, frmCardapio);
  Application.CreateForm(TmodelCardapio, modelCardapio);
  Application.CreateForm(TfrmPedidoVenda, frmPedidoVenda);
  Application.CreateForm(TmodelPedidoVenda, modelPedidoVenda);
  Application.CreateForm(TfrmPedidoCompra, frmPedidoCompra);
  Application.CreateForm(TmodelPedidoCompra, modelPedidoCompra);
  Application.Run;
end.
