unit uVeiculo;

interface

uses uEnums, uExceptions, system.SysUtils;

type

TVeiculo = class
  private
    Fvalor: currency;
    Fid: integer;
    Fstatus: status;
    Fplaca: string;
    Fnome: string;
    procedure Setid(const Value: integer);
    procedure Setnome(const Value: string);
    procedure Setplaca(const Value: string);
    procedure Setstatus(const Value: status);
    procedure Setvalor(const Value: currency);
  published
  property id: integer read Fid write Setid;
  property nome: string read Fnome write Setnome;
  property placa: string read Fplaca write Setplaca;
  property valor: currency read Fvalor write Setvalor;
  property status: status read Fstatus write Setstatus;

  procedure ValidarRegrasNegocios;
end;

implementation

{ TVeiculo }

procedure TVeiculo.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure TVeiculo.Setnome(const Value: string);
begin
  Fnome := Value;
end;

procedure TVeiculo.Setplaca(const Value: string);
begin
  Fplaca := Value;
end;

procedure TVeiculo.Setstatus(const Value: status);
begin
  Fstatus := Value;
end;

procedure TVeiculo.Setvalor(const Value: currency);
begin
  Fvalor := Value;
end;

procedure TVeiculo.ValidarRegrasNegocios;
begin
  if trim(fnome) = '' then
  begin
    ExceptionNome;
  end;

  if length(fnome) <= 4 then
  begin
    ExceptionMinimoNome;
  end;
end;

end.
