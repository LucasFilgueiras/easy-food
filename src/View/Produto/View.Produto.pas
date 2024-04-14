unit View.Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Model.Produto, Model.Cardapio;

type
  TfrmProduto = class(TfrmBase)
    pnlFiltroPesquisa: TPanel;
    RGFiltro: TRadioGroup;
    lblCodigo: TLabel;
    edtCodigo: TDBEdit;
    lblNome: TLabel;
    edtNome: TDBEdit;
    lblDescricao: TLabel;
    edtDescricao: TDBEdit;
    edtPreco: TDBEdit;
    lblPreco: TLabel;
    lblCardapio: TLabel;
    CBCardapio: TDBLookupComboBox;
    DSCardapio: TDataSource;
    procedure navDadosClick(Sender: TObject; Button: TNavigateBtn);
    procedure edtPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto: TfrmProduto;
  qBusca: TmodelProduto;

implementation

{$R *.dfm}

procedure TfrmProduto.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  if RGFiltro.ItemIndex = 0 then
      DSBusca.DataSet.Locate('ID', edtPesquisa.Text, [loPartialKey])
  else
      DSBusca.DataSet.Locate('NOME', edtPesquisa.Text, [loPartialKey]);
end;

procedure TfrmProduto.navDadosClick(Sender: TObject; Button: TNavigateBtn);
var
  proxCodigo: Integer;
begin
  inherited;
  case Button of
    nbInsert:
    begin
      qBusca := TmodelProduto.Create(Self);
      case Button of
        nbInsert:
        begin
          proxCodigo := qBusca.QMaxId.FieldByName('CODIGO').AsInteger + 1;
          edtCodigo.Text := IntToStr(proxCodigo);
        end;
      end;
      qBusca.Free;
    end;
  end;
end;

end.
