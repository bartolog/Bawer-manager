unit UDataContainer;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS;

type
  TDataContainer = class(TDataModule)
    UniConnection1: TUniConnection;
    tblOperai: TUniTable;
    tblRapportini: TUniTable;
    tblRapportiniRows: TUniTable;
    srcRapportini: TUniDataSource;
    srcRapportiniRows: TUniDataSource;
    srcOperai: TUniDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataContainer: TDataContainer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
