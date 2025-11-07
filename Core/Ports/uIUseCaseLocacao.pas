unit uIUseCaseLocacao;

interface

uses uLocacao, uResponse, uDTOLocacao;

type

  IUseCaseLocacao = interface
    // cadastrar

    function Cadastrar(locacao: Tlocacao): Tresponse;

    // alterar

    function Editar(cliente: Tlocacao): Tresponse;

    // deletar

    function Excluir(id: integer): Tresponse;

    // consultar

    function Consultar(Dto: DtoLocacao): Tresponse;

  end;

implementation

end.
