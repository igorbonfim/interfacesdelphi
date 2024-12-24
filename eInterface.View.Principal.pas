unit eInterface.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, eInterface.Model.Interfaces,
  eInterface.Controller.Pessoa, eInterface.Controller.Interfaces;

type
  TFrmPrincipal = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FPessoa: iPessoa;
    procedure ExibeResultado(Value: String);
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation


{$R *.dfm}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  FPessoa
    .Nome(Edit1.Text)
    .SobreNome(Edit2.Text)
    .Display(ExibeResultado)
    .NomeCompleto
end;

procedure TFrmPrincipal.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: FPessoa := TControllerPessoa.New.Pessoa(tpFisica);
    1: FPessoa := TControllerPessoa.New.Pessoa(tpJuridica);
  end;
end;

procedure TFrmPrincipal.ExibeResultado(Value: String);
begin
  Memo1.Lines.Add(Value);
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := true;
end;

end.
