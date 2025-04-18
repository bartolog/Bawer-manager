unit UfrmWorker;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, dxUIAClasses,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, cxTextEdit, System.ImageList, Vcl.ImgList, cxImageList,
  dxLayoutContainer, cxClasses, dxLayoutControl, dxLayoutControlAdapters,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, UDataContainer, Data.DB,
  Aurelius.Bind.BaseDataset, Aurelius.Bind.Dataset, cxDBEdit, cxNavigator,
  cxDBNavigator, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmWorker = class(TFrame)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cxImageList1: TcxImageList;
    dsWorker: TAureliusDataset;
    srcWorker: TDataSource;
    dsWorkername: TStringField;
    dsWorkerSurname: TStringField;
    dsWorkerAddress: TStringField;
    dsWorkerPhone: TStringField;
    dsWorkerBirthday: TDateField;
    cxDBNavigator1: TcxDBNavigator;
    dxLayoutItem1: TdxLayoutItem;
    edNome: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edCognome: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edIndirizzo: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    edPhone: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    edBirthday: TcxDBDateEdit;
    dxLayoutItem7: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UEntities, Generics.Collections;

{ TfrmWorker }



end.
