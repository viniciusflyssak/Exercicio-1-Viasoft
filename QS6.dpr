program QS6;

uses
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uSubstitui in 'CLASS\uSubstitui.pas',
  uISubstitui in 'INTERFACE\uISubstitui.pas';

{$R *.RES}
var
  frmPrincipal: TfrmPrincipal;
begin
  frmPrincipal := TfrmPrincipal.create(nil);
  frmPrincipal.ShowModal;
end.

