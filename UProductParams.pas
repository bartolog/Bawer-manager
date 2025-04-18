unit UProductParams;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, dxUIAClasses,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, dxLayoutContainer, cxTextEdit, cxClasses,
  dxLayoutControl, Vcl.ComCtrls, cxMaskEdit, cxDropDownEdit, System.ImageList,
  Vcl.ImgList, cxImageList, cxSpinEdit, cxCurrencyEdit, Data.DB,
  Aurelius.Bind.BaseDataset, Aurelius.Bind.Dataset, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  UDataContainer, UEntities, Vcl.StdCtrls, cxDBEdit, cxDBNavigator;

type
  TCategoria = class
    Codice: string;
    X: integer;
    Y: integer;
    Z: integer;
  end;

  TfrmProductParams = class(TFrame)
    PageControl1: TPageControl;
    tabScheda: TTabSheet;
    tabGrid: TTabSheet;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    cxImageList1: TcxImageList;
    dxLayoutGroup2: TdxLayoutGroup;
    dsParametri: TAureliusDataset;
    srcParametri: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    dsParametriSelf: TAureliusEntityField;
    dsParametriId: TIntegerField;
    dsParametriCodice: TStringField;
    dsParametriNote: TStringField;
    dsParametriCategoria: TSmallintField;
    dsParametriX: TIntegerField;
    dsParametriY: TIntegerField;
    dsParametriZ: TIntegerField;
    dsParametriTempoLavoro: TFloatField;
    dsParametriCosto: TCurrencyField;
    cxGrid1DBTableView1Self: TcxGridDBColumn;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1Codice: TcxGridDBColumn;
    cxGrid1DBTableView1Note: TcxGridDBColumn;
    cxGrid1DBTableView1Categoria: TcxGridDBColumn;
    cxGrid1DBTableView1X: TcxGridDBColumn;
    cxGrid1DBTableView1Y: TcxGridDBColumn;
    cxGrid1DBTableView1Z: TcxGridDBColumn;
    cxGrid1DBTableView1TempoLavoro: TcxGridDBColumn;
    cxGrid1DBTableView1Costo: TcxGridDBColumn;
    cxGrid1DBTableView1TipoLavoro: TcxGridDBColumn;
    edtCodice: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    edtNote: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    cmbTipoLavoro: TcxDBComboBox;
    cmbCategoria: TcxDBComboBox;
    dxLayoutItem3: TdxLayoutItem;
    edtLx: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    edtLz: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    edtLy: TcxDBTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    dxLayoutItem4: TdxLayoutItem;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dxLayoutItem5: TdxLayoutItem;
    cxDBNavigator1: TcxDBNavigator;
    dxLayoutItem7: TdxLayoutItem;
    dsParametriTipoLavoro: TStringField;
    procedure cmb(Sender: TObject);
    procedure cxGrid1DBTableView1CategoriaPropertiesEditValueChanged
      (Sender: TObject);
    procedure cmbCategoriaPropertiesChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
    FListOfDimensions: TStringList;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor destroy; override;
    procedure LoadData;
  end;

implementation

{$R *.dfm}

uses Generics.Collections;

{ TfrmProductParams }

{ TfrmProductParams }

procedure TfrmProductParams.cmb(Sender: TObject);

begin
  // var
  // i := (sender as TcxDBComboBox).ItemIndex;


  // var
  // c: TCategoria := TCategoria(cmbCategoria.Properties.Items.Objects[fidx]);

end;

procedure TfrmProductParams.cmbCategoriaPropertiesChange(Sender: TObject);
begin

  var

  i := (Sender as TcxDBComboBox).ItemIndex;

  if (i < 0 ) or (i >= cmbCategoria.Properties.Items.Count) then    exit;

  var

    c: TCategoria := TCategoria(cmbCategoria.Properties.Items.Objects[i]);

  edtLx.EditValue := c.X;
  edtLy.EditValue := c.Y;
  edtLz.EditValue := c.Z
end;

constructor TfrmProductParams.Create(AOwner: TComponent);
var
  c: TCategoria;
begin
  inherited;
  FListOfDimensions := TStringList.Create(true);

  c := TCategoria.Create;

  c.Codice := '15';
  c.X := 500;
  c.Y := 300;
  c.Z := 400;

  FListOfDimensions.AddObject('15', c);

  c := TCategoria.Create;

  c.Codice := '20';
  c.X := 600;
  c.Y := 400;
  c.Z := 500;

  FListOfDimensions.AddObject('20', c);

  c := TCategoria.Create;
  c.Codice := '25';
  c.X := 800;
  c.Y := 500;
  c.Z := 500;
  FListOfDimensions.AddObject('25', c);

  c := TCategoria.Create;
  c.Codice := '30';
  c.X := 1000;
  c.Y := 500;
  c.Z := 500;
  FListOfDimensions.AddObject('30', c);

  c := TCategoria.Create;
  c.Codice := '35';
  c.X := 1200;
  c.Y := 500;
  c.Z := 500;
  FListOfDimensions.AddObject('35', c);

  c := TCategoria.Create;
  c.Codice := '40';
  c.X := 1450;
  c.Y := 500;
  c.Z := 500;
  FListOfDimensions.AddObject('40', c);

  (cmbCategoria.Properties as TcxComboBoxProperties)
    .Items.Assign(FListOfDimensions);
  (cxGrid1DBTableView1Categoria.Properties as TcxComboBoxProperties)
    .Items.Assign(FListOfDimensions);

  cmbCategoria.Properties.OnChange := nil;
  cxGrid1DBTableView1Categoria.Properties.OnChange := nil;

  if PageControl1.ActivePage = tabGrid then
    cxGrid1DBTableView1Categoria.Properties.OnChange :=
      cxGrid1DBTableView1CategoriaPropertiesEditValueChanged;

  if PageControl1.ActivePage = tabScheda then
    cmbCategoria.Properties.OnChange := cmbCategoriaPropertiesChange;

end;

procedure TfrmProductParams.
  cxGrid1DBTableView1CategoriaPropertiesEditValueChanged(Sender: TObject);

begin

  var

  i := (Sender as TcxComboBox).ItemIndex;
  var

  c: TCategoria := TCategoria(cmbCategoria.Properties.Items.Objects[i]);
  cxGrid1DBTableView1Categoria.EditValue := c.Codice;
  cxGrid1DBTableView1X.EditValue := c.X;
  cxGrid1DBTableView1Y.EditValue := c.Y;
  cxGrid1DBTableView1Z.EditValue := c.Z;



end;

destructor TfrmProductParams.destroy;
begin
  FListOfDimensions.Free;
  inherited;
end;

procedure TfrmProductParams.LoadData;
var
  p: Tlist<TProductParams>;
begin
  p := MDBawer.AureliusManager1.Find<TProductParams>.List;

  dsParametri.Manager := MDBawer.AureliusManager1.ObjManager;

  dsParametri.SetSourceList(p, true);
  dsParametri.Open

end;

procedure TfrmProductParams.PageControl1Change(Sender: TObject);
begin

     cmbCategoria.Properties.OnChange := nil;
  cxGrid1DBTableView1Categoria.Properties.OnChange := nil;

   if PageControl1.ActivePage = tabGrid then

    cxGrid1DBTableView1Categoria.Properties.OnChange :=
      cxGrid1DBTableView1CategoriaPropertiesEditValueChanged;

  if PageControl1.ActivePage = tabScheda then
    cmbCategoria.Properties.OnChange := cmbCategoriaPropertiesChange;
end;

end.
