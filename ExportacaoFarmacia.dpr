program ExportacaoFarmacia;

uses
  Forms,
  Principal in 'Principal.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Exporta��o Farm�cia';
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
