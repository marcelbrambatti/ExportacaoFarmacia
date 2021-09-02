program ExportacaoFarmacia;

uses
  Forms,
  Principal in 'Principal.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Exportação Farmácia';
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
