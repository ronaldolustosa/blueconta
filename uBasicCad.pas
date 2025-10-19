unit uBasicCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmBasicCad = class(TForm)
    pctBasicCad: TPageControl;
    TabSheet1: TTabSheet;
    tbsDetalhes: TTabSheet;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBasicCad: TfrmBasicCad;

implementation

{$R *.dfm}

procedure TfrmBasicCad.FormShow(Sender: TObject);
var
  i: integer;
begin
  for I := 0 to pctBasicCad.PageCount - 1 do
    pctBasicCad.Pages[i].TabVisible := False;

 // pctBasicCad.Pages[0].Visible := True;
end;

procedure TfrmBasicCad.SpeedButton1Click(Sender: TObject);
begin
//  pctBasicCad.Pages[0].Visible := False;
 // pctBasicCad.Pages[1].Visible := True;
end;

procedure TfrmBasicCad.SpeedButton6Click(Sender: TObject);
begin
 // pctBasicCad.Pages[0].Visible := True;
//  pctBasicCad.Pages[1].Visible := False;
end;

end.
