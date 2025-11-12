unit uUseCaseLocacao;

interface

uses uLocacao, uDtoLocacao, uResponse, uUtils, uIUseCaseLocacao,
  system.SysUtils;

type
  TUseCaseLocacao = class(TInterfacedObject, IUseCaseLocacao)

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

{ TUseCaseLocacao }

function TUseCaseLocacao.Cadastrar(locacao: Tlocacao): Tresponse;
begin

end;

function TUseCaseLocacao.Consultar(Dto: DtoLocacao): Tresponse;
begin

end;

function TUseCaseLocacao.Editar(cliente: Tlocacao): Tresponse;
begin

end;

function TUseCaseLocacao.Excluir(id: integer): Tresponse;
begin

end;

end.
