unit View.Contas_a_pagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.Buttons, Model.Contas_a_pagar;

type
  TfrmContasAPagar = class(TfrmBase)
    lblCodigo: TLabel;
    edtCodigo: TDBEdit;
    lblOrigem: TLabel;
    edtOrigem: TDBEdit;
    lblValor: TLabel;
    edtValor: TDBEdit;
    lblStatus: TLabel;
    btnPagar: TBitBtn;
    pnlFiltro: TPanel;
    RGFiltro: TRadioGroup;
    procedure btnPagarClick(Sender: TObject);
    procedure tabDadosShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasAPagar: TfrmContasAPagar;
  modelContasAPagar: TmodelContasAPagar;

implementation

{$R *.dfm}

procedure TfrmContasAPagar.btnPagarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente pagar esta conta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      modelContasAPagar := TmodelContasAPagar.Create(Self);
      modelContasAPagar.QPagarConta.SQL.Clear;
      modelContasAPagar.QPagarConta.SQL.Add('UPDATE contas_a_pagar SET status = 1 WHERE id=:id');
      modelContasAPagar.QPagarConta.ParamByName('id').AsInteger := StrToInt(edtCodigo.Text);
      modelContasAPagar.QPagarConta.ExecSQL;
    finally
      modelContasAPagar.Free;
      tabBusca.Show;
    end;
  end;
end;

procedure TfrmContasAPagar.tabDadosShow(Sender: TObject);
begin
  inherited;
  if DSBusca.DataSet.FieldByName('status').Value = 0 then
  begin
    lblStatus.Caption:= 'Status da conta: N�o paga';
    lblStatus.Font.Color:= clRed;
    btnPagar.Enabled:= true;
  end
  else
  begin
    lblStatus.Caption:= 'Status da conta: Paga';
    lblStatus.Font.Color:= clGreen;
    btnPagar.Enabled:= false;
  end;
end;

end.
