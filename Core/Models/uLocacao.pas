unit uLocacao;

interface

uses uCliente, uVeiculo;

type

  TLocacao = class
  private
    Fcliente: TCliente;
    Ftotal: currency;
    FDataLocacao: Tdatetime;
    Fid: integer;
    FDataDevolucao: Tdatetime;
    Fveiculo: TVeiculo;
    procedure Setcliente(const Value: TCliente);
    procedure SetDataDevolucao(const Value: Tdatetime);
    procedure SetDataLocacao(const Value: Tdatetime);
    procedure Setid(const Value: integer);
    procedure Settotal(const Value: currency);
    procedure Setveiculo(const Value: TVeiculo);
  published

    property id: integer read Fid write Setid;
    property cliente: TCliente read Fcliente write Setcliente;
    property veiculo: TVeiculo read Fveiculo write Setveiculo;
    property DataLocacao: Tdatetime read FDataLocacao write SetDataLocacao;
    property DataDevolucao: Tdatetime read FDataDevolucao write SetDataDevolucao;
    property total: currency read Ftotal write Settotal;


  end;

implementation

{ TLocacao }

procedure TLocacao.Setcliente(const Value: TCliente);
begin
  Fcliente := Value;
end;

procedure TLocacao.SetDataDevolucao(const Value: Tdatetime);
begin
  FDataDevolucao := Value;
end;

procedure TLocacao.SetDataLocacao(const Value: Tdatetime);
begin
  FDataLocacao := Value;
end;

procedure TLocacao.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure TLocacao.Settotal(const Value: currency);
begin
  Ftotal := Value;
end;

procedure TLocacao.Setveiculo(const Value: TVeiculo);
begin
  Fveiculo := Value;
end;

end.
