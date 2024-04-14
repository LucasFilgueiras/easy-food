unit Model.Produto;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Model.conexao;

type
  TmodelProduto = class(TDataModule)
    QBuscaProduto: TFDQuery;
    QMaxId: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  modelProduto: TmodelProduto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
