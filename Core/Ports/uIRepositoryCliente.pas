unit uIRepositoryCliente;

interface

uses uCliente, uDtoCliente, system.Generics.Collections;

type

  IRepositoryCliente = interface

    procedure Cadastrar(cliente: Tcliente);
    procedure Editar(cliente: Tcliente);
    procedure Excluir(codigo: integer);
    function Consultar(dto: DtoCliente): Tlist <Tcliente>;

  end;

implementation

end.
