unit UEntities;

interface

uses
  Aurelius.Mapping.Attributes, Aurelius.Mapping.AutoMapping,
  System.Generics.Collections,
  Aurelius.Types.Proxy;

type
  TProductParams = class;
  TComplemento = class;
  TLavorazione = class;
  TAccessorio = class;
  TTipoLavoro = (tlLucidatura = 100, tlAssemblaggio );




  [Entity]
  [Automapping]

  TProductParams = class
    FId : integer;
    FCodice : String;
    FNote : string;
    FCategoria : Byte;
    FX : integer;
    FY : integer;
    FZ : integer;
    FTempoLavoro : double;
    FTipoLavoro : string;
    FCosto : Currency;


    public

    property Id: integer read FId write FId;
    property Codice: string read FCodice write FCodice;
    property Note: string read FNote write FNote;
    property Categoria: byte read FCategoria write FCategoria;
    property X: integer read FX write FX;
    property Y: integer read FY write FY;
    property Z: integer read FZ write FZ;
    property TempoLavoro: double read FTempoLavoro write FTempoLavoro;
    property TipoLavoro: string read FTipoLavoro write FTipoLavoro;
    property Costo: Currency read FCosto write FCosto;




  end;

  [Entity]
  [Table('Operai')]
  [Automapping]
  TOperaio = class
    Fid : integer;
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
   [Automapping]
  TRapportino = class
    FId : integer;
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
  [Automapping]

  TComplemento = class
  Fid : Integer;
  FAccessorio : Taccessorio;
  FQta : integer;
  public
  property Id: integer read FId write FId;
  property Accessorio: Taccessorio read FAccessorio write FAccessorio;
  property Qta: integer read FQta write FQta;

  end;

  [Entity]
  [Table('Lavorazioni')]
  [Automapping]
  TLavorazione = class
    FId : integer;
    Fcodice: string; // codice articolo lavorato
    FDescrizione: string;
    FBeginAt: TTime;
    FFinishedAt: TTime;
    FQta: integer;
    FTipoLavoro : Byte;

    FAccessori: Proxy<TList<TComplemento>>;

  public
    constructor create;
    destructor Destroy; override;
    property Id: integer read FId write FId;
    property Codice: string read Fcodice write Fcodice;
    property Descrizione: String read FDescrizione write FDescrizione;
    property BeginAt: TTime read FBeginAt write FBeginAt;
    property FinishedAt: TTime read FFinishedAt write FFinishedAt;
    property TipoLavoro: Byte read FTipoLavoro write FTipoLavoro;
    property Qta: integer read FQta write FQta;
    property Accessori: Proxy<Tlist<TComplemento>> read FAccessori write FAccessori;

  end;

  [Entity]
  [Table('Accessori')]
  [Automapping]
  TAccessorio = class

    Fid : integer;
    Fcodice: string;
    FDescrizione: string;
    FCosto: Currency;
  public

    property Id: integer read FId write FId;
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
  FAccessori.SetInitialValue(TList<TComplemento>.create)
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
RegisterEntity(TComplemento);
RegisterEntity(TProductParams);

end.
