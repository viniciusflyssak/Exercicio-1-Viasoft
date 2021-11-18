unit uSubstitui;

interface

uses
  uISubstitui;

type
  TSubstitui = class(TInterfacedObject,  ISubstitui)
  private
    FStrAntiga: String;
    FStrNova: String;
    FStrSubstituicao: String;
    function GetStrAntiga: String;
    function GetStrNova: String;
    function GetStrSubstituicao: String;
    procedure SetStrAntiga(Value: String);
    procedure SetStrNova(Value: String);
    procedure SetStrSubstituicao(Value: String);
  published
    constructor Create;
    property StrAntiga: String read GetStrAntiga write SetStrAntiga;
    property StrNova: String read GetStrNova write SetStrNova;
    property StrSubstituicao: String read GetStrSubstituicao write SetStrSubstituicao;
    function Substituir(Str, Velho, Novo: String): String;
  end;

implementation

{ Texto }

constructor TSubstitui.Create;
begin
  FStrAntiga := '';
  FStrNova := '';
  FStrSubstituicao := '';
end;

function TSubstitui.GetStrAntiga: String;
begin
  Result := FStrAntiga;
end;

function TSubstitui.GetStrNova: String;
begin
  Result := FStrNova;
end;

function TSubstitui.GetStrSubstituicao: String;
begin
  Result := FStrSubstituicao;
end;

procedure TSubstitui.SetStrAntiga(Value: String);
begin
  FStrAntiga := Value;
end;

procedure TSubstitui.SetStrNova(Value: String);
begin
  FStrNova := Value;
end;

procedure TSubstitui.SetStrSubstituicao(Value: String);
begin
  FStrSubstituicao := Value;
end;

function TSubstitui.Substituir(Str, Velho, Novo: String): String;
var
  i : integer;
  contador : integer;
begin
  Result := '';
  contador := 1;
  for i := 1 to Length(Velho) do
  begin
    if Copy(Velho, contador, Length(Str)) = Str then
    begin
      Result := Result + Novo;
      contador := contador + Length(Str);
    end
    else
    begin
      Result := Result + Copy(Velho, contador, 1);
      contador := contador + 1;
    end;
  end;
end;

end.

