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

procedure ExceptionNome;
procedure ExceptionMinimoNome;
procedure ExceptionDocumento;
procedure ExceptionMinimoDocumento;
procedure ExceptionTelefone;
procedure ExceptionMinimoTelefone;

implementation

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

end.
