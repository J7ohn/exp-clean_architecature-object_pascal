unit uCliente;

interface

type
  TCliente = class
  private
    Flogradouro: string;
    Fbairro: string;
    Fuf: string;
    Fcep: string;
    Fdocumento: string;
    Fid: integer;
    Fnumero: string;
    Fcomplemento: string;
    Fnome: string;
    Fcidade: string;
    Ftelefone: string;
    procedure Setbairro(const Value: string);
    procedure Setcep(const Value: string);
    procedure Setcidade(const Value: string);
    procedure Setcomplemento(const Value: string);
    procedure Setdocumento(const Value: string);
    procedure Setid(const Value: integer);
    procedure Setlogradouro(const Value: string);
    procedure Setnome(const Value: string);
    procedure Setnumero(const Value: string);
    procedure Settelefone(const Value: string);
    procedure Setuf(const Value: string);
  published
    property id: integer read Fid write Setid;
    property nome: string read Fnome write Setnome;
    property documento: string read Fdocumento write Setdocumento;
    property cep: string read Fcep write Setcep;
    property logradouro: string read Flogradouro write Setlogradouro;
    property numero: string read Fnumero write Setnumero;
    property complemento: string read Fcomplemento write Setcomplemento;
    property bairro: string read Fbairro write Setbairro;
    property cidade: string read Fcidade write Setcidade;
    property uf: string read Fuf write Setuf;
    property telefone: string read Ftelefone write Settelefone;
  end;

implementation

{ TCliente }

procedure TCliente.Setbairro(const Value: string);
begin
  Fbairro := Value;
end;

procedure TCliente.Setcep(const Value: string);
begin
  Fcep := Value;
end;

procedure TCliente.Setcidade(const Value: string);
begin
  Fcidade := Value;
end;

procedure TCliente.Setcomplemento(const Value: string);
begin
  Fcomplemento := Value;
end;

procedure TCliente.Setdocumento(const Value: string);
begin
  Fdocumento := Value;
end;

procedure TCliente.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure TCliente.Setlogradouro(const Value: string);
begin
  Flogradouro := Value;
end;

procedure TCliente.Setnome(const Value: string);
begin
  Fnome := Value;
end;

procedure TCliente.Setnumero(const Value: string);
begin
  Fnumero := Value;
end;

procedure TCliente.Settelefone(const Value: string);
begin
  Ftelefone := Value;
end;

procedure TCliente.Setuf(const Value: string);
begin
  Fuf := Value;
end;

end.
