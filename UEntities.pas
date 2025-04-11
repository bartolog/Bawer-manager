unit UEntities;

interface

uses
  Aurelius.Mapping.Attributes, Aurelius.Mapping.AutoMapping,
  System.Generics.Collections,
  Aurelius.Types.Proxy;

type

  TLavorazione = class;
  TAccessorio = class;

  [Entity]
  [Table('Operai')]
  TOperaio = class
    FName: string;
    FSurname: string;
    FAddress: string;
    FPhone: string;
    FBirthday: Tdate;
  public
    property name: string read FName write FName;
    property Surname: string read FSurname write FSurname;
    property Address: string read FAddress write FAddress;
    property Phone: string read FPhone write FPhone;
    property Birthday: Tdate read FBirthday write FBirthday;
  end;

  [Entity]
  [Table('Rapportini')]
  TRapportino = class
    FDay: Tdate;
    FOperaio: TOperaio;
    FLavorazioni: Proxy<TList<TLavorazione>>;

  public

    constructor Create;
    destructor Destroy; override;

    property Day: Tdate read FDay write FDay;
    property Lavorazioni: Proxy < TList < TLavorazione >> read FLavorazioni
      write FLavorazioni;
    property Operaio: TOperaio read FOperaio write FOperaio;

  end;

  [Entity]
  [Table('Lavorazioni')]
  TLavorazione = class
    Fcodice: string; // codice articolo lavorato
    FDescrizione: string;
    FBeginAt: TTime;
    FFinishedAt: TTime;
    FQta: integer;
    FAccessori: Proxy<TList<TAccessorio>>;

  public
    constructor create;
    destructor Destroy; override;
    property Codice: string read Fcodice write Fcodice;
    property Descrizione: String read FDescrizione write FDescrizione;
    property BeginAt: TTime read FBeginAt write FBeginAt;
    property FinishedAt: TTime read FFinishedAt write FFinishedAt;
    property Accessori: Proxy<Tlist<TAccessorio>> read FAccessori write FAccessori;

  end;

  [Entity]
  [Table('Accessori')]
  TAccessorio = class

    Fcodice: string;
    FDescrizione: string;
    FCosto: Currency;
  public

    property Codice: string read Fcodice write Fcodice;
    property Descrizione: string read FDescrizione write FDescrizione;
    property Costo: Currency read FCosto write FCosto;
  end;

implementation

{ TRapportino }

constructor TRapportino.create;
begin
  inherited;
  FLavorazioni.SetInitialValue(TList<TLavorazione>.create)
end;

destructor TRapportino.destroy;
begin

  FLavorazioni.DestroyValue;
  inherited;
end;

{ TLavorazione }

constructor TLavorazione.create;
begin
  inherited;
  FAccessori.SetInitialValue(TList<TAccessorio>.create)
end;

destructor TLavorazione.destroy;
begin
  FAccessori.DestroyValue;

  inherited;
end;

initialization

RegisterEntity(TOperaio);
RegisterEntity(TRapportino);
RegisterEntity(TLavorazione);
RegisterEntity(TAccessorio);

end.
