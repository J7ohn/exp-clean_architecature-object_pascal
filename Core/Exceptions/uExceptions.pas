unit uExceptions;

interface

uses system.SysUtils;

type
  TExceptionNome = class(Exception);
  TExceptionMinimoNome = class(Exception);
  TExceptionDocumento = class(Exception);
  TExceptionMinimoDocumento = class(Exception);
  TExceptionTelefone = class(Exception);
  TExceptionMinimoTelefone = class(Exception);

  TExceptionMinimoNomeVeiculo = class(Exception);
  TExceptionPlacaVeiculo = class(Exception);
  TExceptionMinimoPlacaVeiculo = class(Exception);
  TExceptionValorVeiculo = class(Exception);

procedure ExceptionNome;
procedure ExceptionMinimoNome;
procedure ExceptionDocumento;
procedure ExceptionMinimoDocumento;
procedure ExceptionTelefone;
procedure ExceptionMinimoTelefone;

procedure ExceptionMinimoNomeVeiculo;
procedure ExceptionPlacaVeiculo;
procedure ExceptionMinimoPlacaVeiculo;
procedure ExceptionValorVeiculo;

implementation

//regras para cliente
procedure ExceptionNome;
begin
  raise TExceptionNome.Create('Nome é obrigatório.');
end;

procedure ExceptionMinimoNome;
begin
  raise TExceptionMinimoNome.Create('Nome deve conter no mínimo 4 caracteres.');
end;

procedure ExceptionDocumento;
begin
  raise TExceptionDocumento.Create('Documento é obrigatório.');
end;

procedure ExceptionMinimoDocumento;
begin
  raise TExceptionMinimoDocumento.Create('Documento deve conter no mínimo 4 caracteres.');
end;

procedure ExceptionTelefone;
begin
  raise TExceptionTelefone.Create('Telefone é obrigatório.');
end;

procedure ExceptionMinimoTelefone;
begin
  raise TExceptionMinimoTelefone.Create('Telefone deve conter no mínimo 8 caracteres.');
end;

//regras para veiculos
procedure ExceptionMinimoNomeVeiculo;
begin
  raise TExceptionMinimoNomeVeiculo.Create('Nome deve conter no mínimo 3 caracteres.');
end;

procedure ExceptionPlacaVeiculo;
begin
  raise TExceptionPlacaVeiculo.Create('Placa é obrigatório.');
end;

procedure ExceptionMinimoPlacaVeiculo;
begin
  raise TExceptionMinimoPlacaVeiculo.Create('Placa deve conter no mínimo 6 caracteres.');
end;

procedure ExceptionValorVeiculo;
begin
  raise TExceptionValorVeiculo.Create('Valor deve ser maior que zero (0).');
end;
end.
