unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  uSubstitui, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    pnlFundo: TPanel;
    lblTextoAntigo: TLabel;
    edtTextoAntigo: TEdit;
    edtTextoSubstituir: TEdit;
    lblTextoSubstituir: TLabel;
    edtTextoSubstituto: TEdit;
    lblTextoSubstituto: TLabel;
    mmoTextoResultante: TMemo;
    pnlTitulo: TPanel;
    pnlBotoes: TPanel;
    btnFechar: TSpeedButton;
    btnExecutar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExecutarClick(Sender: TObject);
  private
    cSubstitui: TSubstitui;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnExecutarClick(Sender: TObject);
begin
  mmoTextoResultante.Clear;
  cSubstitui.StrAntiga := edtTextoAntigo.Text;
  cSubstitui.StrSubstituicao := edtTextoSubstituir.Text;
  cSubstitui.StrNova := edtTextoSubstituto.Text;
  mmoTextoResultante.Lines.Add(cSubstitui.Substituir(cSubstitui.StrSubstituicao, cSubstitui.StrAntiga, cSubstitui.StrNova));
end;

procedure TfrmPrincipal.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cSubstitui.Free;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  cSubstitui := TSubstitui.Create;
  mmoTextoResultante.Clear;
end;

end.
