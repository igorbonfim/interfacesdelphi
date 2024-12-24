unit eInterface.Controller.Interfaces;

interface

uses
  eInterface.Model.Interfaces;

type
  TTypePessoa = (tpFisica, tpJuridica);

  iControllerPessoa = interface
  ['{3CFB0513-3266-486A-B9EF-530DB10D97FA}']
    function Pessoa(Value: TTypePessoa): iPessoa;
  end;

implementation

end.
