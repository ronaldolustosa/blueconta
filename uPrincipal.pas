unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Movimentao1: TMenuItem;
    Relatrios1: TMenuItem;
    esteBasico1: TMenuItem;
    FormasdePagamentos1: TMenuItem;
    Contas1: TMenuItem;
    ContasaPagar1: TMenuItem;
    ContasaReceber1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure esteBasico1Click(Sender: TObject);
    procedure FormasdePagamentos1Click(Sender: TObject);
    procedure Contas1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uBasicoCad, uTipoPagamentos, uFormasDePagamento, uContas,
  uContasPagarReceber;

procedure TfrmPrincipal.Contas1Click(Sender: TObject);
begin
 Application.CreateForm(TfrmContas, frmContas);
  try
    frmContas.ShowModal;
  finally
    FreeAndNil(frmContas);
  end;
end;

procedure TfrmPrincipal.ContasaPagar1Click(Sender: TObject);
begin
  TfrmContasPagarReceber.Executar(True);
end;

procedure TfrmPrincipal.ContasaReceber1Click(Sender: TObject);
begin
  TfrmContasPagarReceber.Executar(false);
end;

procedure TfrmPrincipal.esteBasico1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmTiposDePagamentos, frmTiposDePagamentos);
  try
    frmTiposDePagamentos.ShowModal;
  finally
    frmTiposDePagamentos.Free;
  end;
end;

procedure TfrmPrincipal.FormasdePagamentos1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmFormasDePagamentos, frmFormasDePagamentos);
  try
    frmFormasDePagamentos.ShowModal;
  finally
    FreeAndNil(frmFormasDePagamentos);
  end;

end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
