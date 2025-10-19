unit uContasPagarReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBasicoCad, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmContasPagarReceber = class(TfrmBasicoCad)
    dqrMainCODIGO: TIntegerField;
    dqrMainDESCRICAO: TStringField;
    dqrMainDATACOMP: TSQLTimeStampField;
    dqrMainDATAPAG: TSQLTimeStampField;
    dqrMainTIPO: TStringField;
    dqrMainVALOR: TSingleField;
    dqrMainTCT_CODIGO: TIntegerField;
    dqrMainTPG_CODIGO: TIntegerField;
    dqrMainTFG_CODIGO: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    dqrContas: TFDQuery;
    ddsContas: TDataSource;
    dqrContasCODIGO: TIntegerField;
    dqrContasDESCRICAO: TStringField;
    dqrTipoPagamentos: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    ddsTipoPagamentos: TDataSource;
    dqrFormaPagamento: TFDQuery;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    ddsFormaPagamento: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
    fTipoContasPagarOuReceber: string;
  public
    { Public declarations }
    class procedure Executar(EhContasPagar: Boolean);
  end;

var
  frmContasPagarReceber: TfrmContasPagarReceber;

implementation

{$R *.dfm}

{ TfrmContasPagarReceber }

class procedure TfrmContasPagarReceber.Executar(EhContasPagar: Boolean);
begin
  try
    with TfrmContasPagarReceber.Create(nil) as TfrmContasPagarReceber do
    begin
      if EhContasPagar then
      begin
        Caption := 'Contas a Pagar';
        fTipoContasPagarOuReceber := 'P';
      end
      else
      begin
        Caption := 'Contas a Receber';
        fTipoContasPagarOuReceber := 'R';
      end;
      dqrMain.Filtered := false;
      dqrMain.Filter := 'tipo =' + QuotedStr(fTipoContasPagarOuReceber);
      dqrMain.Filtered := true;
      ShowModal;
    end;
  finally

  end;
end;

procedure TfrmContasPagarReceber.SpeedButton5Click(Sender: TObject);
begin
  if dqrMain.State in [dsEdit, dsInsert] then
    dqrMainTIPO.AsString := fTipoContasPagarOuReceber;
  inherited;

end;

end.
