unit uConfiguracaoDB;

interface

uses firedac.Comp.Client, FireDAC.Phys, FireDAC.Phys.PG, FireDAC.Stan.Def,
FireDAC.Stan.Async, FireDAC.Stan.Intf, inifiles, system.SysUtils, uExceptions;

type

TconfiguracaoDb = class
  private
    FQuery: TfdQuery;
    procedure SetQuery(const Value: TfdQuery);
  published

  function Conexao: TFDconnection;
  procedure ExecSql(sql: string);
  function Consulta(sql: string): boolean;
  property Query: TfdQuery read FQuery write SetQuery;

  constructor Create;
  destructor destroy;override;

end;

implementation

{ TconfiguracaoDb }

function TconfiguracaoDb.Conexao: TFDconnection;
begin

end;

function TconfiguracaoDb.Consulta(sql: string): boolean;
begin

end;

constructor TconfiguracaoDb.Create;

var
Diretorio, server, user, database, password, driver: string;
arquivoIni: Tinifile;

begin

Diretorio := ExtractFileDir(GetCurrentDir);
ArquivoIni := Tinifile.Create(diretorio +'\configuracao.ini');
server := ArquivoIni.ReadString('conexao','server','');
database := ArquivoIni.ReadString('conexao','database','');
user := ArquivoIni.ReadString('conexao','user','');
password := ArquivoIni.ReadString('conexao','password','');

end;

destructor TconfiguracaoDb.destroy;
begin

  inherited;
end;

procedure TconfiguracaoDb.ExecSql(sql: string);
begin

end;

procedure TconfiguracaoDb.SetQuery(const Value: TfdQuery);
begin
  FQuery := Value;
end;

end.
