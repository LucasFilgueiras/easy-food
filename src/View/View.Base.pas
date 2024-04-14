unit View.base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.ComCtrls, Model.conexao;

type
  TfrmBase = class(TForm)
    pgcFormulario: TPageControl;
    tabDados: TTabSheet;
    tabBusca: TTabSheet;
    pnlPesquisa: TPanel;
    lblPesquisa: TLabel;
    edtPesquisa: TEdit;
    gridBusca: TDBGrid;
    DSBusca: TDataSource;
    pnlTopo: TPanel;
    lblTitulo: TLabel;
    navDados: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

end.