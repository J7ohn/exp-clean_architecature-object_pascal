unit uUseCaseLocacao;

interface

uses uLocacao, uDtoLocacao, uResponse, uUtils, uIUseCaseLocacao,
  system.SysUtils, uEnums, uExceptions;

type
  TUseCaseLocacao = class(TInterfacedObject, IUseCaseLocacao)

// cadastrar

  function Cadastrar(locacao: Tlocacao): Tresponse;

// alterar

  function Editar(locacao: Tlocacao): Tresponse;

// deletar

  function Excluir(id: integer): Tresponse;

// consultar

  function Consultar(Dto: DtoLocacao): Tresponse;

  procedure ValidarId(id: integer);

end;

implementation

{ TUseCaseLocacao }

function TUseCaseLocacao.Cadastrar(locacao: Tlocacao): Tresponse;
var
  response: Tresponse;
begin
  try

    locacao.ValidarRegrasNegocios;

    response.success := true;
    response.ErrorCode := 0;
    response.Message := RetornarMsgResponse.CADASTRADO_COM_SUCESSO;
    response.Data := nil;
  except
    on e: exception do
    begin
      response := TratarException(e);
    end;

  end;
  result := response;

end;

function TUseCaseLocacao.Consultar(Dto: DtoLocacao): Tresponse;
var
  response: Tresponse;
begin
  try
    response.success := true;
    response.ErrorCode := 0;
    response.Message := RetornarMsgResponse.CONSULTA_REALIZADA_COM_SUCESSO;
    response.Data := nil;
  except
    on e: exception do
    begin
      response := TratarException(e);
    end;

  end;
  result := response;

end;

function TUseCaseLocacao.Editar(locacao: Tlocacao): Tresponse;
var
  response: Tresponse;
begin
  try

    locacao.ValidarRegrasNegocios;

    response.success := true;
    response.ErrorCode := 0;
    response.Message := RetornarMsgResponse.ALTERADO_COM_SUCESSO;
    response.Data := nil;
  except
    on e: exception do
    begin
      response := TratarException(e);
    end;

  end;
  result := response;

end;

function TUseCaseLocacao.Excluir(id: integer): Tresponse;
var
  response: Tresponse;
begin
  try

    ValidarId(id);

    response.success := true;
    response.ErrorCode := 0;
    response.Message := RetornarMsgResponse.DELETADO_COM_SUCESSO;
    response.Data := nil;
  except
    on e: exception do
    begin
      response := TratarException(e);
    end;

  end;
  result := response;

end;

procedure TUseCaseLocacao.ValidarId(id: integer);
begin
  if id < 0 then
  begin
    ExceptionIdInvalido;
  end;
end;

end.
