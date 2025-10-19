unit uData;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client;

type
  TdmConexao = class(TDataModule)
    fdcConexaoDB: TFDConnection;
  private
    { Private declarations }
  public
    { Public declarations }
    function EstaConectado: Boolean;
    function ConectarBanco(aCaminhoBancoDeDados: string): Boolean;

  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

function TdmConexao.ConectarBanco(aCaminhoBancoDeDados: string): Boolean;
begin
  fdcConexaoDB.Close;
  try
    fdcConexaoDB.Params.Clear;
    fdcConexaoDB.Params.Add('DriveID=FB');  
    fdcConexaoDB.Params.Add('Database='+aCaminhoBancoDeDados);
    fdcConexaoDB.Params.Add('User_Name=SYSDBA');
    fdcConexaoDB.Params.Add('Passaword=Masterkey');
    fdcConexaoDB.Connected :=  True;
    Result := fdcConexaoDB.Connected;
  except on E: Exception do
    Result := False;
  end;
end;

function TdmConexao.EstaConectado: Boolean;
begin
  Result := fdcConexaoDB.Connected;
end;

end.
