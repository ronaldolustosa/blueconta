program prContasPR;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uLogin in 'uLogin.pas' {frmLogin},
  uBasicoCad in 'uBasicoCad.pas' {frmBasicoCad},
  uData in 'uData.pas' {dmConexao: TDataModule},
  uTipoPagamentos in 'uTipoPagamentos.pas' {frmTiposDePagamentos},
  uFormasDePagamento in 'uFormasDePagamento.pas' {frmFormasDePagamentos},
  uContas in 'uContas.pas' {frmContas},
  uContasPagarReceber in 'uContasPagarReceber.pas' {frmContasPagarReceber};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmBasicoCad, frmBasicoCad);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmTiposDePagamentos, frmTiposDePagamentos);
  Application.CreateForm(TfrmFormasDePagamentos, frmFormasDePagamentos);
  Application.CreateForm(TfrmContas, frmContas);
  Application.CreateForm(TfrmContasPagarReceber, frmContasPagarReceber);
  Application.Run;
end.
