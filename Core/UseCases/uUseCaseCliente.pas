unit uUseCaseCliente;

interface

uses uIUseCaseCliente, system.SysUtils, uCliente, uDTOCliente, uResponse,
  uEnums;

type
  TUseCaseCliente = class(TinterfacedObject, IUseCaseCliente)
    // cadastrar

    function Cadastrar(cliente: TCliente): Tresponse;

    // alterar

    function Editar(cliente: TCliente): Tresponse;

    // deletar

    function Excluir(id: integer): Tresponse;

    // consultar

    function Consultar(Dto: DtoCliente): Tresponse;
  end;

implementation

{ TUseCaseCliente }

function TUseCaseCliente.Cadastrar(cliente: TCliente): Tresponse;
var
  response: Tresponse;
begin
  try
    response.success := true;
    response.ErrorCode := 0;
    response.Message := RetornarMsgResponse.CADASTRADO_COM_SUCESSO;
    response.Data := nil;
  except
    on e: exception do
    begin

    end;

  end;
  result := response;
end;

function TUseCaseCliente.Consultar(Dto: DtoCliente): Tresponse;
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

    end;

  end;
  result := response;
end;

function TUseCaseCliente.Editar(cliente: TCliente): Tresponse;
var
  response: Tresponse;
begin
  try
    response.success := true;
    response.ErrorCode := 0;
    response.Message := RetornarMsgResponse.ALTERADO_COM_SUCESSO;
    response.Data := nil;
  except
    on e: exception do
    begin

    end;

  end;
  result := response;
end;

function TUseCaseCliente.Excluir(id: integer): Tresponse;
var
  response: Tresponse;
begin
  try
    response.success := true;
    response.ErrorCode := 0;
    response.Message := RetornarMsgResponse.DELETADO_COM_SUCESSO;
    response.Data := nil;
  except
    on e: exception do
    begin

    end;

  end;
  result := response;
end;

end.
