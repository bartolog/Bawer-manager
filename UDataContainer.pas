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
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

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
    tblLavorazioniDESCRIZIONE: TWideMemoField;
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
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure StartDB;
  end;

var
  MDBawer: TMDBawer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
 Aurelius.Engine.DatabaseManager;

procedure TMDBawer.DataModuleCreate(Sender: TObject);
var
 dm : TDatabaseManager;
begin
   dm := TDatabaseManager.Create(AureliusConnection1.CreateConnection);
   try
   dm.UpdateDatabase;
   finally
     dm.Free
   end;

end;

procedure TMDBawer.StartDB;
begin
tblAccessori.Open;

tblOperai.Open;
tblRapportini.Open;
tblLavorazioni.Open;
tblComplementi.Open;

end;

end.
