unit UDataContainer;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, Aurelius.Sql.Sqlite, Aurelius.Schema.Sqlite,
  Aurelius.Drivers.FireDac, Aurelius.Engine.ObjectManager, Aurelius.Linq,
  Aurelius.Comp.Manager, Aurelius.Comp.Connection, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, UEntities;

type
  TMDBawer = class(TDataModule)
    FDConnection1: TFDConnection;
    AureliusConnection1: TAureliusConnection;
    AureliusManager1: TAureliusManager;
    tblRapportini: TFDTable;
    tblLavorazioni: TFDTable;
    tblComplementi: TFDTable;
    tblAccessori: TFDTable;
    tblOperai: TFDTable;
    srcAccessori: TDataSource;
    srcComplementi: TDataSource;
    srcLavorazioni: TDataSource;
    srcOperai: TDataSource;
    srcRapportini: TDataSource;
    tblRapportiniID: TFDAutoIncField;
    tblRapportiniDAY: TFloatField;
    tblRapportiniOPERAIO_ID: TIntegerField;
    tblLavorazioniID: TFDAutoIncField;
    tblLavorazioniCODICE: TWideMemoField;
    tblLavorazioniBEGIN_AT: TFloatField;
    tblLavorazioniFINISHED_AT: TFloatField;
    tblLavorazioniQTA: TIntegerField;
    tblLavorazioniLAVORAZIONI_RAPPORTINO_ID: TIntegerField;
    tblComplementiID: TFDAutoIncField;
    tblComplementiACCESSORIO_ID: TIntegerField;
    tblComplementiQTA: TIntegerField;
    tblComplementiACCESSORI_LAVORAZIONE_ID: TIntegerField;
    tblComplementiNome_Accessorio: TStringField;
    tblLavorazioniTIPO_LAVORO: TWideStringField;
    tblRapportiniOperaio: TStringField;
    tblLavorazioniCosto: TCurrencyField;
    tblLavorazioniNOTE: TWideMemoField;
    tblLavorazioniDescrizione: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure tblLavorazioniCalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }

    FProductsParams : TProductsParams;
    procedure CaricaParametri;
  public
    { Public declarations }
    procedure StartDB;
    function GetListOfNote : TStringList;
  end;

var
  MDBawer: TMDBawer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
 Aurelius.Engine.DatabaseManager, Generics.Collections;


procedure TMDBawer.CaricaParametri;
var
  lP: TList<TProductParams>;
begin

  lP := MDBawer.AureliusManager1.Find<TProductParams>.List;
  try
    var
      i: Integer;
    for i := 0 to lP.Count - 1 do
     FProductsParams.Add(lP[i])

  finally
    lP.Free
  end;

end;


procedure TMDBawer.DataModuleCreate(Sender: TObject);
var
 dm : TDatabaseManager;
begin
   FProductsParams := TProductsParams.Create;
   dm := TDatabaseManager.Create(AureliusConnection1.CreateConnection);
   try
   dm.UpdateDatabase;
   finally
     dm.Free
   end;

  CaricaParametri

end;

procedure TMDBawer.DataModuleDestroy(Sender: TObject);
begin
     FProductsParams.Free
end;

function TMDBawer.GetListOfNote: TStringList;
begin
     result := TStringList.Create;
     FProductsParams.GetListOfNote(Result);
end;

procedure TMDBawer.StartDB;
begin
tblAccessori.Open;

tblOperai.Open;
tblRapportini.Open;
tblLavorazioni.Open;
tblComplementi.Open;

end;

procedure TMDBawer.tblLavorazioniCalcFields(DataSet: TDataSet);
var
 pp : TProductParams;
 rCode , cCat : string;
begin

try
  rCode := 'V'+copy(tblLavorazioniCODICE.Value,3,2); //codice riga
  cCat := copy(tblLavorazioniCODICE.Value,5,2); //codice riga
  tblLavorazioniDescrizione.AsString := FProductsParams.GetDimensions(rCode,cCat.ToInteger) ;

  pp := FProductsParams.GetProductByCode(rCode,  tblLavorazioniNOTE.Value,

  tblLavorazioniTIPO_LAVORO.Value, cCat.ToInteger


  )       ;

  tblLavorazioniCosto.Value := pp.Costo * tblLavorazioniQTA.Value


except

tblLavorazioniCosto.Value := 0
end;


end;

end.
