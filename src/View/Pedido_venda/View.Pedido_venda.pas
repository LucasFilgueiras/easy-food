unit View.Pedido_venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Model.Pedido_venda, Model.Produto, Controller.Pedido_venda;

type
  TfrmPedidoVenda = class(TfrmBase)
    pnlFiltro: TPanel;
    RGFiltro: TRadioGroup;
    lblCodigo: TLabel;
    edtCodigo: TDBEdit;
    lblProduto: TLabel;
    lblData: TLabel;
    edtData: TDBEdit;
    CBProduto: TDBLookupComboBox;
    DSProduto: TDataSource;
    procedure edtPesquisaChange(Sender: TObject);
    procedure navDadosClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidoVenda: TfrmPedidoVenda;
  modelPedidoVenda: TmodelPedidoVenda;

implementation

{$R *.dfm}

procedure TfrmPedidoVenda.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  if RGFiltro.ItemIndex = 0 then
      DSBusca.DataSet.Locate('ID', edtPesquisa.Text, [loPartialKey])
  else
      DSBusca.DataSet.Locate('NOME', edtPesquisa.Text, [loPartialKey]);
end;

procedure TfrmPedidoVenda.navDadosClick(Sender: TObject; Button: TNavigateBtn);
var
  proxCodigo: Integer;
begin
  inherited;
  modelPedidoVenda := TmodelPedidoVenda.Create(Self);
  case Button of
    nbInsert:
    begin
      proxCodigo := modelPedidoVenda.QMaxId.FieldByName('CODIGO').AsInteger + 1;
      edtCodigo.Text := IntToStr(proxCodigo);
    end;
    nbPost:
    begin
      gerarContasAReceber(edtCodigo.Text, CBProduto.KeyValue);
    end;
  end;
  modelPedidoVenda.Free;
end;

end.
