unit uBasicoCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmBasicoCad = class(TForm)
    pctBasicCad: TPageControl;
    tbsGrid: TTabSheet;
    tbsDetalhes: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    dqrMain: TFDQuery;
    ddsMain: TDataSource;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBasicoCad: TfrmBasicoCad;

implementation

{$R *.dfm}

uses uData;

procedure TfrmBasicoCad.FormShow(Sender: TObject);
var
  i: integer;
begin
  for I := 0 to pctBasicCad.PageCount - 1 do
    pctBasicCad.Pages[i].TabVisible := False;

   pctBasicCad.Pages[0].Visible := true;

end;

procedure TfrmBasicoCad.SpeedButton1Click(Sender: TObject);
begin
  dqrmain.Append;
  pctBasicCad.Pages[0].Visible := False;
  pctBasicCad.Pages[1].Visible := True;
end;

procedure TfrmBasicoCad.SpeedButton2Click(Sender: TObject);
begin
  dqrMain.Edit;
  pctBasicCad.Pages[0].Visible := False;
  pctBasicCad.Pages[1].Visible := True;
end;

procedure TfrmBasicoCad.SpeedButton3Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o registro?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dqrMain.Delete;
    dqrMain.ApplyUpdates();
  end;
end;

procedure TfrmBasicoCad.SpeedButton4Click(Sender: TObject);
begin
  close;
end;

procedure TfrmBasicoCad.SpeedButton5Click(Sender: TObject);
begin
  try
    dqrMain.Post;
    dqrMain.ApplyUpdates();
    pctBasicCad.Pages[1].Visible := False;
    pctBasicCad.Pages[0].Visible := True;
  except on E: Exception do
     dqrMain.Cancel;
  end;

end;

procedure TfrmBasicoCad.SpeedButton6Click(Sender: TObject);
begin
  dqrMain.Cancel;
  pctBasicCad.Pages[0].Visible := True;
  pctBasicCad.Pages[1].Visible := False;
end;

end.
