unit Model.Contas_a_pagar;

interface

uses
  System.SysUtils, System.Classes, Model.conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TmodelContasAPagar = class(TDataModule)
    QBuscaContasAPagar: TFDQuery;
    QBuscaContasAPagarID: TIntegerField;
    QBuscaContasAPagarORIGEM: TStringField;
    QBuscaContasAPagarVALOR: TFMTBCDField;
    QBuscaContasAPagarSTATUS: TIntegerField;
    QPagarConta: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  modelContasAPagar: TmodelContasAPagar;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
