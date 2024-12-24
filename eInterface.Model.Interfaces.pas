unit eInterface.Model.Interfaces;

interface

type
  TEvDisplay = procedure(Value: String) of object;

  iPessoa = interface
    ['{47776F2B-31CD-4CBF-B7F0-9A09D61BCB5D}']
    function Nome(Value: String): iPessoa;  overload;
    function Nome: String; overload;
    function SobreNome(Value: String): iPessoa;
    function NomeCompleto: iPessoa;
    function Display(Value: TEvDisplay): iPessoa;
  end;

  iPessoaFactory = interface
    ['{3A04DB39-AEF4-4C5D-87E3-4B2EB2BB02AA}']
    function PessoaFisica: iPessoa;
    function PessoaJuridica: iPessoa;
  end;

implementation

end.
