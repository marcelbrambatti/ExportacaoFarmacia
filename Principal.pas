unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, ExtCtrls, Mask, DB, DBClient,
  Data.DBXFirebird, Data.SqlExpr, Data.FMTBcd, Midas,
  Vcl.ComCtrls, Vcl.DBGrids, Vcl.DBCtrls, Datasnap.Provider, Vcl.Menus;

type
  _ConexaoConfig = record
    especie: string;
    estab: string;
    loja: string;
    hostname: string;
    database: string;
    username: string;
    password: string;
    contafluxo: string;
  end;

  TForm2 = class(TForm)
    Panel2: TPanel;
    btnPesquisar: TBitBtn;
    Label1: TLabel;
    edFilial: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    dsSel: TDataSource;
    sqlcon: TSQLConnection;
    edDataInicial: TDateTimePicker;
    edDataFinal: TDateTimePicker;
    gridNotas: TDBGrid;
    qrSel: TSQLQuery;
    cdsDados: TClientDataSet;
    dspDados: TDataSetProvider;
    qrSelSEL: TStringField;
    qrSelDTVENCIMENTO: TSQLTimeStampField;
    qrSelNRDUPLICATA: TStringField;
    qrSelDTENTRADA: TSQLTimeStampField;
    qrSelCDLOJA: TIntegerField;
    qrSelVLRCONTA: TFMTBCDField;
    qrSelCDFORNECEDOR: TIntegerField;
    qrSelCGC_CPF: TStringField;
    qrSelDESCRICAO: TStringField;
    qrSelOBS: TStringField;
    cdsDadosSEL: TStringField;
    cdsDadosDTVENCIMENTO: TSQLTimeStampField;
    cdsDadosNRDUPLICATA: TStringField;
    cdsDadosDTENTRADA: TSQLTimeStampField;
    cdsDadosCDLOJA: TIntegerField;
    cdsDadosVLRCONTA: TFMTBCDField;
    cdsDadosCDFORNECEDOR: TIntegerField;
    cdsDadosCGC_CPF: TStringField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosOBS: TStringField;
    cdsDadosSomaTotal: TAggregateField;
    PopupMenu1: TPopupMenu;
    MarcarTodos1: TMenuItem;
    DesmarcarTodos1: TMenuItem;
    labelPesquisa: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    StatusBar1: TStatusBar;
    btnExportar: TBitBtn;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edFilialClick(Sender: TObject);
    procedure MarcarTodos1Click(Sender: TObject);
    procedure DesmarcarTodos1Click(Sender: TObject);
    procedure gridNotasDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure Conectar;
    procedure AbrirArquivoConfiguracao(NomeArquivo: String);
    procedure CarregarConfig;
    function sqlPadrao: string;
  public
    { Public declarations }
    Conexao: _ConexaoConfig;
  end;

var
  Form2: TForm2;

implementation

uses
  IniFiles, StrUtils;

{$R *.dfm}
{ TForm2 }

procedure TForm2.CarregarConfig;
var
  ini: TIniFile;
  hostname, database, password, username: string;
begin
  ini := TIniFile.Create('.\conexoes.ini');
  try
    Conexao.especie := ini.ReadString(edFilial.Text, 'Especie', 'XX');
    Conexao.estab := ini.ReadString(edFilial.Text, 'Estab', '000');
    Conexao.loja := ini.ReadString(edFilial.Text, 'Loja', '0');
    Conexao.hostname := ini.ReadString(edFilial.Text, 'HostName', '172.16.6.2');
    Conexao.database := ini.ReadString(edFilial.Text, 'Database',
      '/work/interbase/banco/sismec.fdb');
    Conexao.password := ini.ReadString(edFilial.Text, 'Password', 'money');
    Conexao.username := ini.ReadString(edFilial.Text, 'User', 'sysdba');
    Conexao.contafluxo := ini.ReadString(edFilial.Text, 'Conta', '');
  finally
    FreeAndNil(ini);
  end;
  StatusBar1.Panels[0].Text := '[' + Conexao.loja + '/' + Conexao.especie + ']'
    + Conexao.hostname + ':' + Conexao.database;
end;

procedure TForm2.AbrirArquivoConfiguracao(NomeArquivo: String);
begin
end;

procedure TForm2.btnExportarClick(Sender: TObject);
var
  arq: TextFile;
  linha, especie, estab, loja: string;
  Dia, Ano, Mes, Hora, Min, Seg, Mili: Word;
  i: Integer;
begin
  if not cdsDados.Active or cdsDados.IsEmpty then
  begin
    ShowMessage('Nada a exportar!');
    exit;
  end;
  especie := Conexao.especie;
  estab := Conexao.estab;
  loja := Conexao.loja;

  DecodeDate(edDataInicial.Date, Ano, Mes, Dia);
  DecodeTime(edDataInicial.Date, Hora, Min, Seg, Mili);

  // Arquivo TXT
  AssignFile(arq, '.\Arquivo' + Conexao.especie + '-' +
    FormatDateTime('dd-MM-yyyy', edDataInicial.Date) + '.txt');
  Rewrite(arq);

  linha := '100   ' + FormatFloat('00', Dia) + FormatFloat('00', Mes) +
    FormatFloat('00', Hora) + FormatFloat('00', Min) + FormatFloat('00', Seg) +
    FormatDateTime('ddmmyyyy', edDataInicial.Date) + '00000000000000' + estab;
  Writeln(arq, linha);

  cdsDados.First;
  while not cdsDados.Eof do
  begin
    if cdsDadosSEL.AsString = 'S' then
    begin
      linha := '200          ' + Conexao.especie + '             01' +
        FormatDateTime('ddmmyyyy', cdsDadosDTENTRADA.AsDateTime) +
        FormatDateTime('ddmmyyyy', cdsDadosDTVENCIMENTO.AsDateTime) +
        '                  ' + FormatFloat('00000000000',
        cdsDadosVLRCONTA.AsCurrency * 100) +
        '                                                                                                     '
        + '41    REAL' +
        '                                                                                                                                                                                                                                                '
        + '1' + RightStr('                ' + cdsDadosNRDUPLICATA.AsString, 16) +
        cdsDadosCGC_CPF.AsString;
      Writeln(arq, linha);

      linha := '400                                                                       '
        + FormatFloat('00000000000', cdsDadosVLRCONTA.AsCurrency * 100) + ' ' +
        Conexao.contafluxo;
      // ' ANS2016   12711911111110002                   FAR2.1.10.10.03';
      Writeln(arq, linha);
    end;

    cdsDados.Next;
  end;
  CloseFile(arq);

  // Arquivo CSV
  AssignFile(arq, '.\Relatorio' + Conexao.especie + '-' +
    FormatDateTime('dd-MM-yyyy', edDataInicial.Date) + '.csv');
  Rewrite(arq);

  linha := '';
  for i := 0 to cdsDados.FieldCount - 1 do
  begin
    linha := linha + cdsDados.Fields[i].FieldName + ';';
  end;
  Writeln(arq, linha);

  cdsDados.First;
  while not cdsDados.Eof do
  begin
    linha := '';
    for i := 0 to cdsDados.FieldCount - 1 do
    begin
      if (cdsDados.Fields[i].ClassType = TStringField) then
        linha := linha + cdsDados.FieldByName
          (cdsDados.Fields[i].FieldName).AsString + ';'
      else
      if (cdsDados.Fields[i].ClassType = TIntegerField) then
        linha := linha + cdsDados.FieldByName
          (cdsDados.Fields[i].FieldName).AsString + ';'
      else
      if cdsDados.Fields[i].ClassType = TFMTBCDField then
        linha := linha + FormatFloat('#0.00',
          cdsDados.FieldByName(cdsDados.Fields[i].FieldName).AsFloat) + ';'
      else
      if cdsDados.Fields[i].ClassType = TSQLTimeStampField then
        linha := linha + FormatDateTime('dd/MM/yyyy',
          cdsDados.FieldByName(cdsDados.Fields[i].FieldName).AsDateTime) + ';';
    end;
    Writeln(arq, linha);
    cdsDados.Next;
  end;
  CloseFile(arq);

  MessageBox(0, 'Arquivo exportado com sucesso.', 'Concluído',
    MB_ICONINFORMATION or MB_OK or MB_SYSTEMMODAL);
end;

function TForm2.sqlPadrao: string;
begin
  result := 'select ''S'' as Sel, ' + '     ctaspagar.DTVENCIMENTO, ' +
    '     ctaspagar.nrduplicata, ' + '     notas.dtentrada, ' +
    '     ctaspagar.CDLOJA, ' + '     ctaspagar.VLRCONTA, ' +
    '     ctaspagar.CDFORNECEDOR, ' + '     fornecedores.CGC_CPF, ' +
    '     fornecedores.DESCRICAO, ' +
    '     cast(ctaspagar.OBS as char(500)) as obs ' + 'from ctaspagar ' +
    ' left join fornecedores on fornecedores.cdfornecedor = ctaspagar.cdfornecedor '
    + ' left join notas on ctaspagar.nrdocumento = cast(notas.nrnota as varchar(20)) '
    + ' left join cfop on cfop.cdcfop = notas.cdnatureza ';
end;

procedure TForm2.btnPesquisarClick(Sender: TObject);
begin
  if edFilial.ItemIndex < 0 then
    raise exception.Create('Selecione uma filial.');

  Conectar;
  StatusBar1.Panels[1].Text := 'Processando...';
  Application.ProcessMessages;
  qrSel.Close;
  qrSel.SQL.Text := sqlPadrao;
  qrSel.SQL.Add('where notas.dtentrada between ' +
    QuotedStr(FormatDateTime('yyyy-MM-dd', edDataInicial.Date)) + ' and ' +
    QuotedStr(FormatDateTime('yyyy-MM-dd', edDataFinal.Date)) +
    ' and ctaspagar.CDLOJA = ' + Conexao.loja);
  qrSel.SQL.Add('and (cfop.flgtiponota = ''C'')');
  cdsDados.Close;
  cdsDados.Open;
  StatusBar1.Panels[1].Text := 'Pronto. ' + IntToStr(cdsDados.RecordCount) + ' registro(s) encontrado(s)';
  Application.ProcessMessages;
  Label5.Caption := edFilial.Text;
  labelPesquisa.Caption := 'Período: ' + FormatDateTime('dd/MM/yyyy',
    edDataInicial.Date) + ' à ' + FormatDateTime('dd/MM/yyyy', edDataFinal.Date);
  if not(VarToStr(cdsDadosSomaTotal.Value) = '') then
    Label4.Caption := 'Valor Total (R$): ' + FormatFloat('#,#0.00', StrToFloat(VarToStr(cdsDadosSomaTotal.Value)));
end;

procedure TForm2.Conectar;
begin
  sqlcon.Close;
  sqlcon.Params.Clear;
  sqlcon.Params.Add('DriverName=Firebird');
  sqlcon.Params.Add('Database=' + Conexao.hostname + ':' + Conexao.database);
  sqlcon.Params.Add('RoleName=RoleName');
  sqlcon.Params.Add('User_Name=' + Conexao.username);
  sqlcon.Params.Add('Password=' + Conexao.password);
  sqlcon.Params.Add('ServerCharSet=');
  sqlcon.Params.Add('SQLDialect=3');
  sqlcon.Params.Add('ErrorResourceFile=');
  sqlcon.Params.Add('LocaleCode=0000');
  sqlcon.Params.Add('BlobSize=-1');
  sqlcon.Params.Add('CommitRetain=False');
  sqlcon.Params.Add('WaitOnLocks=True');
  sqlcon.Params.Add('IsolationLevel=ReadCommitted');
  sqlcon.Params.Add('Trim Char=False');
  sqlcon.Open;
end;

procedure TForm2.DesmarcarTodos1Click(Sender: TObject);
begin
  cdsDados.First;
  while not cdsDados.Eof do
  begin
    cdsDados.Edit;
    cdsDadosSEL.Value := 'N';
    cdsDados.Post;
    cdsDados.Next;
  end;
end;

procedure TForm2.edFilialClick(Sender: TObject);
begin
  CarregarConfig;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  ini: TIniFile;
  Secoes: TStringList;
begin
  if not FileExists('.\conexoes.ini') then
  begin
    ShowMessage('Arquivo CONEXOES.INI não encontrado!');
    Application.Terminate;
  end;

  edFilial.Items.Clear;
  ini := TIniFile.Create('.\conexoes.ini');
  try
    Secoes := TStringList.Create;
    ini.ReadSections(Secoes);
    edFilial.Items.Text := Secoes.Text;
  finally
    FreeAndNil(Secoes);
    FreeAndNil(ini);
  end;

  edDataInicial.Date := Date - 1;
  edDataFinal.Date := Date - 1;
  if edFilial.Items.Count > 0 then
    edFilial.ItemIndex := 0;
  CarregarConfig;
end;

procedure TForm2.gridNotasDblClick(Sender: TObject);
begin
  if not cdsDados.IsEmpty then
  begin
    cdsDados.Edit;
    if cdsDadosSEL.AsString = 'S' then
      cdsDadosSEL.Value := 'N'
    else
      cdsDadosSEL.Value := 'S';
  end;
  cdsDados.Post;
end;

procedure TForm2.MarcarTodos1Click(Sender: TObject);
begin
  cdsDados.First;
  while not cdsDados.Eof do
  begin
    cdsDados.Edit;
    cdsDadosSEL.Value := 'S';
    cdsDados.Post;
    cdsDados.Next;
  end;
end;

end.
