unit uUseCaseVeiculo;

interface

uses uVeiculo, uDTOVeiculo, UIUseCaseVeiculo, uResponse;

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
  end;

implementation

{ TUseCaseVeiculo }

function TUseCaseVeiculo.Cadastrar(veiculo: TVeiculo): Tresponse;
begin

end;

function TUseCaseVeiculo.Consultar(Dto: DtoVeiculo): Tresponse;
begin

end;

function TUseCaseVeiculo.Editar(veiculo: TVeiculo): Tresponse;
begin

end;

function TUseCaseVeiculo.Excluir(id: integer): Tresponse;
begin

end;

end.
