unit View.Pedido_compra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Model.Pedido_compra, Controller.Pedido_compra;

type
  TfrmPedidoCompra = class(TfrmBase)
    pnlFiltro: TPanel;
    RGFiltro: TRadioGroup;
    lblCodigo: TLabel;
    edtCodigo: TDBEdit;
    lblNome: TLabel;
    edtNome: TDBEdit;
    lblData: TLabel;
    edtData: TDBEdit;
    lblValor: TLabel;
    edtValor: TDBEdit;
    procedure edtPesquisaChange(Sender: TObject);
    procedure navDadosClick(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidoCompra: TfrmPedidoCompra;
  modelPedidoCompra: TmodelPedidoCompra;

implementation

{$R *.dfm}

procedure TfrmPedidoCompra.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  if RGFiltro.ItemIndex = 0 then
      DSBusca.DataSet.Locate('ID', edtPesquisa.Text, [loPartialKey])
  else
      DSBusca.DataSet.Locate('NOME', edtPesquisa.Text, [loPartialKey]);
end;

procedure TfrmPedidoCompra.navDadosClick(Sender: TObject; Button: TNavigateBtn);
var
  proxCodigo: Integer;
begin
  inherited;
  modelPedidoCompra := TmodelPedidoCompra.Create(Self);
  case Button of
    nbInsert:
    begin
      proxCodigo := modelPedidoCompra.QMaxId.FieldByName('CODIGO').AsInteger + 1;
      edtCodigo.Text := IntToStr(proxCodigo);
    end;
    nbPost:
    begin
      gerarContasAPagar(edtCodigo.Text, edtValor.Text);
    end;
  end;
  modelPedidoCompra.Free;
end;

end.
