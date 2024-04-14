unit Model.Cardapio;

interface

uses
  System.SysUtils, System.Classes, Model.conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TmodelCardapio = class(TDataModule)
    QBuscaCardapio: TFDQuery;
    QMaxId: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  modelCardapio: TmodelCardapio;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
