unit UFrmGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, dxUIAClasses,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, Vcl.ComCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.ExtCtrls;

type
  TfrmGrid = class(TFrame)
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    StatusBar1: TStatusBar;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetCaption (aCaption : string ) ;
    procedure AttachDataSource(aDataSource : TDataSource);
  end;

implementation

{$R *.dfm}

uses
cxCalendar;

procedure TfrmGrid.AttachDataSource(aDataSource: TDataSource);
begin
    cxGrid1DBTableView1.ClearItems;
    cxGrid1DBTableView1.DataController.DataSource := aDataSource;

    cxGrid1DBTableView1.DataController.CreateAllItems();

    cxGrid1DBTableView1.Items[0].Visible := False;
    cxGrid1DBTableView1.Items[1].PropertiesClass := TcxDateEditProperties


end;

{ TFrame1 }

procedure TfrmGrid.SetCaption(aCaption : string);
begin
    Panel1.Caption := acaption
end;

end.
