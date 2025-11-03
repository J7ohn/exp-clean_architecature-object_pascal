unit uEnums;

interface

type

  TmsgResponse = record
    CADASTRADO_COM_SUCESSO,
    ALTERADO_COM_SUCESSO,
    CONSULTA_REALIZADA_COM_SUCESSO,
    CONSULTA_SEM_RETORNO,
    DELETADO_COM_SUCESSO: string;

  end;

  function RetornarMsgResponse: TmsgResponse;

implementation

function RetornarMsgResponse: TmsgResponse;
begin
  result.CADASTRADO_COM_SUCESSO := 'Cadastrado com sucesso!';
   result.ALTERADO_COM_SUCESSO   := 'Alterado com sucesso!';
   result.DELETADO_COM_SUCESSO   := 'Deletado com sucesso!';
   result.CONSULTA_REALIZADA_COM_SUCESSO := 'Consulta realizada com sucesso!';
   result.CONSULTA_SEM_RETORNO   := 'Consulta sem retorno!';
end;

end.
