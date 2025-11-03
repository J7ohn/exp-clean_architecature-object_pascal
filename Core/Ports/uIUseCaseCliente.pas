unit uIUseCaseCliente;

interface

uses uCliente, uResponse, uDTOCliente;

type
  IUseCaseCliente = interface
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

end.
