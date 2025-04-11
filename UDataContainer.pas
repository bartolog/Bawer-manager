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
  Aurelius.Comp.Manager, Aurelius.Comp.Connection;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    AureliusConnection1: TAureliusConnection;
    AureliusManager1: TAureliusManager;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
