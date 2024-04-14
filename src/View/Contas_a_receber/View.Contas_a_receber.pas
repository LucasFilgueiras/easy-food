unit View.Contas_a_receber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Base, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Model.Contas_a_receber, Vcl.Buttons;

type
  TfrmContasAReceber = class(TfrmBase)
    lblCodigo: TLabel;
    edtCodigo: TDBEdit;
    lblOrigem: TLabel;
    edtOrigem: TDBEdit;
    lblValor: TLabel;
    edtValor: TDBEdit;
    lblStatus: TLabel;
    btnReceber: TBitBtn;
    procedure btnReceberClick(Sender: TObject);
    procedure tabDadosShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContasAReceber: TfrmContasAReceber;
  modelContasAReceber: TmodelContasAReceber;

implementation

{$R *.dfm}

procedure TfrmContasAReceber.btnReceberClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja realmente receber esta conta?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    modelContasAReceber := TmodelContasAReceber.Create(Self);
    modelContasAReceber.QReceberConta.SQL.Clear;
    modelContasAReceber.QReceberConta.SQL.Add('UPDATE contas_a_receber SET status = 1 WHERE id=:id');
    modelContasAReceber.QReceberConta.ParamByName('id').AsInteger := StrToInt(edtCodigo.Text);
    modelContasAReceber.QReceberConta.ExecSQL;
    modelContasAReceber.Free;

    tabBusca.Show;
  end;
end;

procedure TfrmContasAReceber.tabDadosShow(Sender: TObject);
begin
  inherited;
  if DSBusca.DataSet.FieldByName('status').Value = 0 then
  begin
    lblStatus.Caption:= 'Status da conta: N�o recebida';
    lblStatus.Font.Color:= clRed;
     btnReceber.Enabled:= true;
  end
  else
  begin
    lblStatus.Caption:= 'Status da conta: Recebida';
    lblStatus.Font.Color:= clGreen;
    btnReceber.Enabled:= false;
  end;
end;

end.
