unit uUtils;

interface

uses system.SysUtils, uResponse, uExceptions, uEnums;

function TratarException(e: Exception): Tresponse;

implementation

function TratarException(e: Exception): Tresponse;
var
  response: Tresponse;
begin
  response.success := false;
  response.Message := e.Message;
  response.Data := nil;

  if e.ClassType = TExceptionNome then
  begin
    response.ErrorCode := RetornarErrorCode.NOME_NAO_INFORMADO;
  end;

  if e.ClassType = TExceptionMinimoNome then
  begin
    response.ErrorCode := RetornarErrorCode.NOME_INVALIDO;
  end;

  if e.ClassType = TExceptionDocumento then
  begin
    response.ErrorCode := RetornarErrorCode.DOCUMENTO_NAO_INFORMADO;
  end;

  if e.ClassType = TExceptionMinimoDocumento then
  begin
    response.ErrorCode := RetornarErrorCode.DOCUMENTO_INVALIDO;
  end;

  if e.ClassType = TExceptionTelefone then
  begin
    response.ErrorCode := RetornarErrorCode.TELEFONE_NAO_INFORMADO;
  end;

  if e.ClassType = TExceptionMinimoTelefone then
  begin
    response.ErrorCode := RetornarErrorCode.TELEFONE_INVALIDO;
  end;

  if e.ClassType = TExceptionPlacaVeiculo then
  begin
    response.ErrorCode := RetornarErrorCode.PLACA_NAO_INFORMADA;
  end;

  if e.ClassType = TExceptionMinimoPlacaVeiculo then
  begin
    response.ErrorCode := RetornarErrorCode.PLACA_INVALIDA;
  end;

  if e.ClassType = TExceptionMinimoNomeVeiculo then
  begin
    response.ErrorCode := RetornarErrorCode.NOME_INVALIDO;
  end;

  if e.ClassType = TExceptionValorVeiculo then
  begin
    response.ErrorCode := RetornarErrorCode.VALOR_INVALIDO;
  end;

  result := response;

end;

end.
