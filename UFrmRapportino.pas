unit UFrmRapportino;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, dxUIAClasses,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, dxLayoutContainer, cxClasses,
  dxLayoutControl, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  System.ImageList, Vcl.ImgList, cxImageList, UDataContainer,
  Aurelius.Bind.BaseDataset, Aurelius.Bind.Dataset, UEntities, cxDBEdit,
  cxDBNavigator, cxTimeEdit;

type
  TfrmRapportino = class(TFrame)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxImageList1: TcxImageList;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cxDBDateEdit1: TcxDBDateEdit;
    dxLayoutItem1: TdxLayoutItem;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1CODICE: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIZIONE: TcxGridDBColumn;
    cxGrid1DBTableView1BEGIN_AT: TcxGridDBColumn;
    cxGrid1DBTableView1FINISHED_AT: TcxGridDBColumn;
    cxGrid1DBTableView1QTA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_LAVORO: TcxGridDBColumn;
    cxGrid1DBTableView1LAVORAZIONI_RAPPORTINO_ID: TcxGridDBColumn;
    cxGrid1DBTableView2ID: TcxGridDBColumn;
    cxGrid1DBTableView2ACCESSORIO_ID: TcxGridDBColumn;
    cxGrid1DBTableView2Nome_Accessorio: TcxGridDBColumn;
    cxGrid1DBTableView2QTA: TcxGridDBColumn;
    cxGrid1DBTableView2ACCESSORI_LAVORAZIONE_ID: TcxGridDBColumn;
    cxDBNavigator1: TcxDBNavigator;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure cxGrid1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

implementation

{$R *.dfm}

uses
  System.Generics.Collections;

{ TfrmRapportino }

procedure TfrmRapportino.cxGrid1Enter(Sender: TObject);
begin
  if MDBawer.tblRapportini.State in [dsInsert, dsEdit ] then
                           MDBawer.tblRapportini.Post

end;




end.
