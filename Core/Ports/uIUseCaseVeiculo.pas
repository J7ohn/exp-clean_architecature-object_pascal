unit uIUseCaseVeiculo;

interface

uses uVeiculo, uResponse, uDTOVeiculo;

type

  IUseCaseVeiculo = interface
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

end.
