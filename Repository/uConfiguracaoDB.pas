unit uConfiguracaoDB;

interface

uses firedac.Comp.Client, firedac.Phys, firedac.Phys.PG, firedac.Stan.Def,
  firedac.Stan.Async, firedac.Stan.Intf, inifiles, system.SysUtils, uExceptions,
  firedac.Phys.PGDef;

type

  TconfiguracaoDb = class
  private
    connection: TFDConnection;
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
    FQuery: TfdQuery;
    procedure SetQuery(const Value: TfdQuery);
  published

    function Conexao: TFDConnection;
    procedure ExecSql(sql: string);
    function Consulta(sql: string): boolean;
    property Query: TfdQuery read FQuery write SetQuery;

    constructor Create;
    destructor destroy; override;

  end;

implementation

{ TconfiguracaoDb }

function TconfiguracaoDb.Conexao: TFDConnection;
begin
  result := connection;
end;

function TconfiguracaoDb.Consulta(sql: string): boolean;
begin
  result := false;

  try
    FQuery.sql.Clear;
    FQuery.sql.Add(sql);
    FQuery.Open();

    result := not FQuery.IsEmpty;
  except
    on E: exception do
    begin
      exceptionDatabase(E.message);
    end;
  end;

end;

constructor TconfiguracaoDb.Create;

var
  Diretorio, server, user, database, password, driver: string;
  arquivoIni: Tinifile;

begin

  Diretorio := ExtractFileDir(GetCurrentDir);
  arquivoIni := Tinifile.Create(Diretorio + '\configuracao.ini');
  server := arquivoIni.ReadString('conexao', 'server', '');
  database := arquivoIni.ReadString('conexao', 'database', '');
  user := arquivoIni.ReadString('conexao', 'user', '');
  password := arquivoIni.ReadString('conexao', 'password', '');
  driver := 'PG';

  try
    connection := TFDConnection.Create(nil);
    FDPhysPgDriverLink := TFDPhysPgDriverLink.Create(nil);

    connection.LoginPrompt := false;
    connection.Params.Clear;
    connection.Params.Add('DriverID=' + driver);
    connection.Params.Add('Database=' + database);
    connection.Params.Add('Password=' + password);
    connection.Params.Add('User=' + user);
    connection.Params.Add('Server=' + server);

    connection.Open();

    Query := TfdQuery.Create(nil);
    Query.connection := connection;

  except

    on E: exception do
    begin
      connection.Free;
      FDPhysPgDriverLink.Free;
      Query.Free;

      exceptionDatabase(E.message);
    end;

  end;

end;

destructor TconfiguracaoDb.destroy;
begin

  connection.Free;
  FQuery.Free;
  FDPhysPgDriverLink.Free;

  inherited;
end;

procedure TconfiguracaoDb.ExecSql(sql: string);
begin

  try
    FQuery.sql.Clear;
    FQuery.sql.Add(sql);
    FQuery.ExecSql;
  except
    on E: exception do
    begin
      exceptionDatabase(E.message);
    end;
  end;

end;

procedure TconfiguracaoDb.SetQuery(const Value: TfdQuery);
begin
  FQuery := Value;
end;

end.
