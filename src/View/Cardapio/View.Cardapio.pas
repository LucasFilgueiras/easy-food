unit View.Cardapio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Model.Cardapio;

type
  TfrmCardapio = class(TfrmBase)
    pnlFiltro: TPanel;
    RGFiltro: TRadioGroup;
    lblCodigo: TLabel;
    edtCodigo: TDBEdit;
    lblNome: TLabel;
    edtNome: TDBEdit;
    lblValidade: TLabel;
    edtValidade: TDBEdit;
    procedure navDadosClick(Sender: TObject; Button: TNavigateBtn);
    procedure edtPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCardapio: TfrmCardapio;
  modelCardapio: TmodelCardapio;

implementation

{$R *.dfm}

procedure TfrmCardapio.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  if RGFiltro.ItemIndex = 0 then
      DSBusca.DataSet.Locate('ID', edtPesquisa.Text, [loPartialKey])
  else
      DSBusca.DataSet.Locate('NOME', edtPesquisa.Text, [loPartialKey]);
end;

procedure TfrmCardapio.navDadosClick(Sender: TObject; Button: TNavigateBtn);
var
  proxCodigo: Integer;
begin
  inherited;
  case Button of
    nbInsert:
    begin
      modelCardapio := TmodelCardapio.Create(Self);
      case Button of
        nbInsert:
        begin
          proxCodigo := modelCardapio.QMaxId.FieldByName('CODIGO').AsInteger + 1;
          edtCodigo.Text := IntToStr(proxCodigo);
        end;
      end;
      modelCardapio.Free;
    end;
  end;
end;

end.
