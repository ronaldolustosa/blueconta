unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmLogin = class(TForm)
    Image1: TImage;
    pctLogin: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Image2: TImage;
    edtUsuario: TEdit;
    Label1: TLabel;
    edtSenha: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    edtCaminhoDB: TEdit;
    Label3: TLabel;
    Button3: TButton;
    Button4: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pctLoginMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fCanLogin: boolean;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses uPrincipal, uData;

procedure TfrmLogin.Button1Click(Sender: TObject);
begin
  if (edtUsuario.Text = 'ADMIN') and (edtSenha.Text = 'SUPER') then
  begin
    Application.CreateForm(TfrmPrincipal, frmPrincipal);
    frmLogin.Free;
    frmPrincipal.Show;
  end
  else
  begin
     ShowMessage('usuário e senha não cadastrados.');
  end;
end;

procedure TfrmLogin.Button2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLogin.Button3Click(Sender: TObject);
begin
  if not VarIsEmpty(edtCaminhoDB.Text) then
  begin
    if uData.dmConexao.EstaConectado  then
    begin
     ShowMessage('Banco está conectado!');
    end
    else
    begin
      if dmConexao.conectarBanco(edtCaminhoDB.Text) then
        ShowMessage('Banco está conectado!')
      else
        ShowMessage('Banco não está conectado!');
    end;
  end;

end;

procedure TfrmLogin.Button4Click(Sender: TObject);
begin
  if OpenDialog1.Execute() then
  begin
    edtCaminhoDB.Text := OpenDialog1.FileName;
  end;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TfrmLogin.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfrmLogin.FormShow(Sender: TObject);
var
  i: integer;
begin
  // Linhas de correção: Limpa os campos de texto
  edtUsuario.Text := '';
  edtSenha.Text := '';

  // O seu código original para manipular o PageControl
  for I := 0 to pctLogin.PageCount - 1 do
    pctLogin.Pages[i].TabVisible := False;

  pctLogin.Pages[0].Visible := True;
end;

procedure TfrmLogin.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfrmLogin.pctLoginMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

procedure TfrmLogin.SpeedButton1Click(Sender: TObject);
begin
  pctLogin.Pages[0].Visible := False;
  pctLogin.Pages[1].Visible := True;
end;

procedure TfrmLogin.SpeedButton2Click(Sender: TObject);
begin
  pctLogin.Pages[1].Visible := False;
  pctLogin.Pages[0].Visible := True;
end;

procedure TfrmLogin.TabSheet1Show(Sender: TObject);
begin
  if edtUsuario.CanFocus then
    edtUsuario.SetFocus;
end;

end.
