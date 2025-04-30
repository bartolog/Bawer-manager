unit UEntities;

interface

uses
  Aurelius.Mapping.Attributes, Aurelius.Mapping.AutoMapping,
  System.Generics.Collections, System.Classes,
  Aurelius.Types.Proxy;

type
  TProductParams = class;
  TComplemento = class;
  TLavorazione = class;
  TAccessorio = class;
  TTipoLavoro = (tlLucidatura = 100, tlAssemblaggio);

  [Entity]
  [AutoMapping]

  TProductParams = class
    FId: integer;
    FCodice: String;
    FNote: string;
    FCategoria: Byte;
    FX: integer;
    FY: integer;
    FZ: integer;
    FTempoLavoro: double;
    FTipoLavoro: string;
    FCosto: Currency;

  public

    constructor Create(aCode: string); overload;
    property Id: integer read FId write FId;
    property Codice: string read FCodice write FCodice;
    property Note: string read FNote write FNote;
    property Categoria: Byte read FCategoria write FCategoria;
    property X: integer read FX write FX;
    property Y: integer read FY write FY;
    property Z: integer read FZ write FZ;
    property TempoLavoro: double read FTempoLavoro write FTempoLavoro;
    property TipoLavoro: string read FTipoLavoro write FTipoLavoro;
    property Costo: Currency read FCosto write FCosto;

  end;

  TProductsParams = Class(TList<TProductParams>)

  public
    Function GetDimensions(aCode : string;aCategory : byte ) : string;
    Function GetProductByCode(aCode, aNote, aTipoLavoro: string;
      aCategory: Byte): TProductParams;
    Function CheckCategory(aCat: Byte): Boolean;
    procedure GetListOfNote(aList : TStrings);
  End;

  [Entity]
  [Table('Operai')]
  [AutoMapping]
  TOperaio = class
    FId: integer;
    FName: string;
    FSurname: string;
    FAddress: string;
    FPhone: string;
    FBirthday: Tdate;
  public
    property Id: integer read FId write FId;
    property name: string read FName write FName;
    property Surname: string read FSurname write FSurname;
    property Address: string read FAddress write FAddress;
    property Phone: string read FPhone write FPhone;
    property Birthday: Tdate read FBirthday write FBirthday;
  end;

  [Entity]
  [Table('Rapportini')]
  [AutoMapping]
  TRapportino = class
    FId: integer;
    FDay: Tdate;
    FOperaio: TOperaio;
    FLavorazioni: Proxy<TList<TLavorazione>>;

  public

    constructor Create;
    destructor Destroy; override;

    property Id: integer read FId write FId;
    property Day: Tdate read FDay write FDay;
    property Operaio: TOperaio read FOperaio write FOperaio;
    property Lavorazioni: Proxy < TList < TLavorazione >> read FLavorazioni
      write FLavorazioni;

  end;

  [Entity]
  [Table('Complementi')]
  [AutoMapping]

  TComplemento = class
    FId: integer;
    FAccessorio: TAccessorio;
    FQta: integer;
  public
    property Id: integer read FId write FId;
    property Accessorio: TAccessorio read FAccessorio write FAccessorio;
    property Qta: integer read FQta write FQta;

  end;

  [Entity]
  [Table('Lavorazioni')]
  [AutoMapping]
  TLavorazione = class
    FId: integer;
    FCodice: string; // codice articolo lavorato

    FNote : string;
//    FDescrizione: string;
    FBeginAt: TTime;
    FFinishedAt: TTime;
    FQta: integer;
    FTipoLavoro: Byte;

    FAccessori: Proxy<TList<TComplemento>>;

  public
    constructor Create;
    destructor Destroy; override;
    property Id: integer read FId write FId;
    property Codice: string read FCodice write FCodice;
    property Note: string read FNote write FNote;
  //  property Descrizione: String read FDescrizione write FDescrizione;
    property BeginAt: TTime read FBeginAt write FBeginAt;
    property FinishedAt: TTime read FFinishedAt write FFinishedAt;
    property TipoLavoro: Byte read FTipoLavoro write FTipoLavoro;
    property Qta: integer read FQta write FQta;
    property Accessori: Proxy < TList < TComplemento >> read FAccessori
      write FAccessori;

  end;

  [Entity]
  [Table('Accessori')]
  [AutoMapping]
  TAccessorio = class

    FId: integer;
    FCodice: string;
    FDescrizione: string;
    FCosto: Currency;
  public

    property Id: integer read FId write FId;
    property Codice: string read FCodice write FCodice;
    property Descrizione: string read FDescrizione write FDescrizione;
    property Costo: Currency read FCosto write FCosto;
  end;

implementation

uses
  SysUtils;

{ TRapportino }

constructor TRapportino.Create;
begin
  inherited;
  FLavorazioni.SetInitialValue(TList<TLavorazione>.Create)
end;

destructor TRapportino.Destroy;
begin

  FLavorazioni.DestroyValue;
  inherited;
end;

{ TLavorazione }

constructor TLavorazione.Create;
begin
  inherited;
  FAccessori.SetInitialValue(TList<TComplemento>.Create)
end;

destructor TLavorazione.Destroy;
begin
  FAccessori.DestroyValue;

  inherited;
end;

{ TProductParams }

constructor TProductParams.Create(aCode: string);
var
  i: integer;

begin
  inherited Create;
  i := pos(' ', aCode);
  if i > 0 then
  begin
    FCodice := trim(copy(aCode, 1, i));
    System.Delete(aCode, 1, pos(' ', aCode));
    FNote := trim(aCode);
  end
  else
  begin
    FCodice := aCode;

  end;

end;

{ TProductsParams }

function TProductsParams.CheckCategory(aCat: Byte): Boolean;
var
  i: integer;

begin
  result := false;

  i := 0;
  while (i < self.Count) and (not result) do
  begin
    result := Items[i].Categoria = aCat;
    inc(i)
  end;

end;

function TProductsParams.GetDimensions(aCode : string;aCategory : byte ) : string;
var
  i: integer;
  lFound: Boolean;
begin

  i := 0;

  lFound := false;
  while (i < self.Count) and (not lFound) do
  begin

    with Items[i] do
      lFound := (Codice = aCode) and (Categoria = aCategory)  ;

    inc(i)
  end;

  result := 'Fuori misura';
  if lFound then
    with Items[i - 1] do
    result := format('%dX%dX%d',[FX,FY,FZ]);

end;

procedure  TProductsParams. GetListOfNote(aList : TStrings);
var
  i: integer;
begin

  for i := 0 to Count - 1 do
    if (Items[i].Note.Length > 0) and (aList.IndexOf(Items[i].Note) = -1) then
      aList.Add(Items[i].Note)

end;

Function TProductsParams.GetProductByCode(aCode, aNote, aTipoLavoro: string;
  aCategory: Byte): TProductParams;
var
  i: integer;
  lFound: Boolean;
begin

  i := 0;

  lFound := false;
  while (i < self.Count) and (not lFound) do
  begin

    with Items[i] do
      lFound := (Codice = aCode) and (Note = aNote) and (Categoria = aCategory)
        and (CompareText(TipoLavoro ,aTipoLavoro) = 0);

    inc(i)
  end;

  result := nil;
  if lFound then
    result := Items[i - 1];

end;

initialization

RegisterEntity(TOperaio);
RegisterEntity(TRapportino);
RegisterEntity(TLavorazione);
RegisterEntity(TAccessorio);
RegisterEntity(TComplemento);
RegisterEntity(TProductParams);

end.
