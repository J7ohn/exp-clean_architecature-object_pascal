unit uMenuPrincipal;

interface

uses Winapi.Windows, system.SysUtils;

procedure menu;

procedure menuCliente;
procedure cadastrarCliente;
procedure editarCliente;
procedure excluirCliente;
procedure consultarCliente;

procedure menuVeiculo;
procedure cadastrarVeiculo;
procedure editarVeiculo;
procedure excluirVeiculo;
procedure consultarVeiculo;

procedure menuLocacao;
procedure cadastrarLocacao;
procedure editarLocacao;
procedure excluirLocacao;
procedure consultarLocacao;

procedure clear;

function modulo: string;


implementation

procedure clear;
var
  stdout: THandle;
  csbi: TConsoleScreenBufferInfo;
  ConsoleSize: DWORD;
  NumWritten: DWORD;
  Origin: TCoord;
begin
  stdout := GetStdHandle(STD_OUTPUT_HANDLE);
  Win32Check(stdout <> INVALID_HANDLE_VALUE);
  Win32Check(GetConsoleScreenBufferInfo(stdout, csbi));
  ConsoleSize := csbi.dwSize.X * csbi.dwSize.Y;
  Origin.X := 0;
  Origin.Y := 0;
  Win32Check(FillConsoleOutputCharacter(stdout, ' ', ConsoleSize, Origin,
    NumWritten));
  Win32Check(FillConsoleOutputAttribute(stdout, csbi.wAttributes, ConsoleSize,
    Origin, NumWritten));
  Win32Check(SetConsoleCursorPosition(stdout, Origin));
end;


function modulo: string;
begin
  result := '1 - Cadastrar' + #13#10 + '2 - Editar' + #13#10 + '3 - Excluir' +
    #13#10 + '4 - Consultar' + #13#10 + '5 - Voltar';
end;


procedure menu;
var
  modulo: string;
  opcao: integer;
begin

  modulo := ('1 - Clientes' + #13#10 + '2 - Veículos' + #13#10 +
    '3 - Locações');

  writeln('MENU PRINCIPAL');
  writeln;
  writeln(modulo);
  writeln;

  write('Opção: ');
  read(opcao);

  case opcao of
    1:
      menuCliente;
    2:
      menuVeiculo;
    3:
      menuLocacao;
  else
    write('Opção inválida!');
  end;

end;

procedure menuCliente;
var
  opcao: integer;
begin

  writeln('MENU CLIENTES');
  writeln;
  writeln(modulo);
  writeln;

  write('Opção: ');
  read(opcao);

  case opcao of
    1:
      cadastrarCliente;
    2:
      editarCliente;
    3:
      excluirCliente;
    4:
      consultarCliente;
    5:
      menu;
  else
    write('Opção inválida!');
  end;

end;

procedure cadastrarCliente;
begin
  clear;
  writeln('Cadastro de cliente');
  writeln;
end;

procedure editarCliente;
begin
  clear;
  writeln('Cadastro de cliente');
  writeln;
end;

procedure excluirCliente;
begin
  clear;
  writeln('Cadastro de cliente');
  writeln;
end;

procedure consultarCliente;
begin
  clear;
  writeln('Cadastro de cliente');
  writeln;
end;

procedure menuVeiculo;
var
  opcao: integer;
begin

  writeln('MENU VEÍCULOS');
  writeln;
  writeln(modulo);
  writeln;

  write('Opção: ');
  read(opcao);

  case opcao of
    1:
      cadastrarVeiculo;
    2:
      editarVeiculo;
    3:
      excluirVeiculo;
    4:
      consultarVeiculo;
    5:
      menu;
  else
    write('Opção inválida!');
  end;

end;

procedure cadastrarVeiculo;
begin
  clear;
  writeln('Cadastro de Veiculo');
  writeln;
end;

procedure editarVeiculo;
begin
  clear;
  writeln('Cadastro de Veiculo');
  writeln;
end;

procedure excluirVeiculo;
begin
  clear;
  writeln('Cadastro de Veiculo');
  writeln;
end;

procedure consultarVeiculo;
begin
  clear;
  writeln('Cadastro de Veiculo');
  writeln;
end;

procedure menuLocacao;
var
  opcao: integer;
begin

  writeln('MENU LOCAÇÕES');
  writeln;
  writeln(modulo);
  writeln;

  write('Opção: ');
  read(opcao);

  case opcao of
    1:
      cadastrarLocacao;
    2:
      editarLocacao;
    3:
      excluirLocacao;
    4:
      consultarLocacao;
    5:
      menu;
  else
    write('Opção inválida!');
  end;

end;

procedure cadastrarLocacao;
begin
  clear;
  writeln('Cadastro de Locacao');
  writeln;
end;

procedure editarLocacao;
begin
  clear;
  writeln('Cadastro de Locacao');
  writeln;
end;

procedure excluirLocacao;
begin
  clear;
  writeln('Cadastro de Locacao');
  writeln;
end;

procedure consultarLocacao;
begin
  clear;
  writeln('Cadastro de Locacao');
  writeln;
end;

end.
