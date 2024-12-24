program InterfacesProject;

uses
  Vcl.Forms,
  eInterface.View.Principal in 'eInterface.View.Principal.pas' {FrmPrincipal},
  eInterface.Model.Interfaces in 'eInterface.Model.Interfaces.pas',
  eInterface.Model.PessoaFisica in 'eInterface.Model.PessoaFisica.pas',
  eInterface.Model.PessoaJuridica in 'eInterface.Model.PessoaJuridica.pas',
  eInterface.Model.Pessoa.Factory in 'eInterface.Model.Pessoa.Factory.pas',
  eInterface.Controller.Pessoa in 'eInterface.Controller.Pessoa.pas',
  eInterface.Controller.Interfaces in 'eInterface.Controller.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
