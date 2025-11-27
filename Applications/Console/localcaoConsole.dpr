program localcaoConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uMenuPrincipal in 'uMenuPrincipal.pas',
  uCliente in '..\..\Core\Models\uCliente.pas',
  uIUseCaseCliente in '..\..\Core\Ports\uIUseCaseCliente.pas',
  uResponse in '..\..\Core\Response\uResponse.pas',
  uDTOCliente in '..\..\Core\DTO\uDTOCliente.pas',
  uUseCaseCliente in '..\..\Core\UseCases\uUseCaseCliente.pas',
  uEnums in '..\..\Core\Enums\uEnums.pas',
  uExceptions in '..\..\Core\Exceptions\uExceptions.pas',
  uUtils in '..\..\Utils\uUtils.pas',
  uVeiculo in '..\..\Core\Models\uVeiculo.pas',
  uIUseCaseVeiculo in '..\..\Core\Ports\uIUseCaseVeiculo.pas',
  uDTOVeiculo in '..\..\Core\DTO\uDTOVeiculo.pas',
  uUseCaseVeiculo in '..\..\Core\UseCases\uUseCaseVeiculo.pas',
  uLocacao in '..\..\Core\Models\uLocacao.pas',
  uIUseCaseLocacao in '..\..\Core\Ports\uIUseCaseLocacao.pas',
  uDTOLocacao in '..\..\Core\DTO\uDTOLocacao.pas',
  uUseCaseLocacao in '..\..\Core\UseCases\uUseCaseLocacao.pas',
  uIRepositoryCliente in '..\..\Core\Ports\uIRepositoryCliente.pas';

begin
  try
    menu;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
