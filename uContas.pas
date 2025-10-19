unit uContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBasicoCad, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmContas = class(TfrmBasicoCad)
    dqrMainCODIGO: TIntegerField;
    dqrMainDESCRICAO: TStringField;
    Label1: TLabel;
    edtCodigo: TDBEdit;
    Label2: TLabel;
    edtDescricao: TDBEdit;
    dqrAux: TFDQuery;
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
    function ExisteCodigoDaContaNoBanco(aCodigo: String): Boolean;
  public
    { Public declarations }
  end;

var
  frmContas: TfrmContas;

implementation

{$R *.dfm}


function TfrmContas.ExisteCodigoDaContaNoBanco(aCodigo: String): Boolean;
begin
  dqrAux.Close;
  dqrAux.ParamByName('codigo').AsString := aCodigo;
  dqrAux.Open;

  Result := (dqrAux.FieldByName('qtd').AsInteger > 0);

end;

procedure TfrmContas.SpeedButton5Click(Sender: TObject);
begin
  if (edtCodigo.Text = '') then
  begin
    ShowMessage('Campo código em branco.');
    edtCodigo.SetFocus;
  end
  else if ExisteCodigoDaContaNoBanco(edtCodigo.Text) then
  begin
    ShowMessage('Código já cadastrado.');
    edtCodigo.SetFocus;
  end
  else
    inherited;end;

end.
