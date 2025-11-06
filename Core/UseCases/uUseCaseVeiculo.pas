unit uUseCaseVeiculo;

interface

uses uVeiculo, uDTOVeiculo, UIUseCaseVeiculo, uResponse, uEnums, uUtils, system.SysUtils, uExceptions;

type

  TUseCaseVeiculo = class(TInterfacedObject, IUseCaseVeiculo)
    // cadastrar

    function Cadastrar(veiculo: TVeiculo): Tresponse;

    // alterar

    function Editar(veiculo: TVeiculo): Tresponse;

    // deletar

    function Excluir(id: integer): Tresponse;

    // consultar

    function Consultar(Dto: DtoVeiculo): Tresponse;

    procedure ValidarId(id: integer);
  end;

implementation

{ TUseCaseVeiculo }

function TUseCaseVeiculo.Cadastrar(veiculo: TVeiculo): Tresponse;
var
  response: Tresponse;
begin
  try

    veiculo.ValidarRegrasNegocios;

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

function TUseCaseVeiculo.Consultar(Dto: DtoVeiculo): Tresponse;
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

function TUseCaseVeiculo.Editar(veiculo: TVeiculo): Tresponse;
var
  response: Tresponse;
begin
  try

    veiculo.ValidarRegrasNegocios;

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

function TUseCaseVeiculo.Excluir(id: integer): Tresponse;
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

procedure TUseCaseVeiculo.ValidarId(id: integer);
begin
  if id < 0 then
  begin
    ExceptionIdInvalido;
  end;
end;

end.
