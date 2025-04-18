unit UMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, cxClasses,
  dxBar, System.ImageList, Vcl.ImgList, cxImageList, cxGraphics, Vcl.ExtCtrls,
  UfrmWorker, UDataContainer, UProductParams;

type
  TfrmMain = class(TForm)
    cxImageList1: TcxImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    ActionList1: TActionList;
    actShowRecord: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    grHome: TdxBarGroup;
    grView: TdxBarGroup;
    actShowGrid: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    Panel1: TPanel;
    actShowWorker: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    actShowParameter: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    procedure actShowRecordExecute(Sender: TObject);
    procedure actShowGridExecute(Sender: TObject);
    procedure actShowWorkerExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actShowParameterExecute(Sender: TObject);
  private
    { Private declarations }
    function IsthereThisClass(aClass: string): TComponent;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses UCommon, UFrmRapportino, UFrmGrid;

procedure TfrmMain.actShowParameterExecute(Sender: TObject);
var
  c: TComponent;
begin
  // todo : mostrare la form per l'iserimento dei dati di un rapportino
  // ShowMessage('Mostra la form di inserimento dati rapportino')
  c := IsthereThisClass('TfrmProductParams');



  if not Assigned(c) then
    c := TfrmProductParams.Create(Self);

  with (c as TfrmProductParams) do
  begin
    Parent := Panel1;
    Align := alClient;
    LoadData

  end;
end;

procedure TfrmMain.actShowRecordExecute(Sender: TObject);
var
  c: TComponent;
begin
  // todo : mostrare la form per l'iserimento dei dati di un rapportino
  // ShowMessage('Mostra la form di inserimento dati rapportino')

  c := IsthereThisClass('TfrmRapportino');

  if not Assigned(c) then

    with TfrmRapportino.Create(Self) do
    begin
      Parent := Panel1;
      Align := alClient;

    end
  else
    with (c as TfrmRapportino) do
    begin
      Parent := Panel1;
      Align := alClient;

    end;

end;

procedure TfrmMain.actShowWorkerExecute(Sender: TObject);
var
  c: TComponent;
begin
  // todo : mostrare la form per l'iserimento dei dati di un rapportino
  // ShowMessage('Mostra la form di inserimento dati rapportino')
  c := IsthereThisClass('TfrmWorker');

  if not Assigned(c) then
    c := TfrmWorker.Create(Self);

  with (c as TfrmWorker) do
  begin
    Parent := Panel1;
    Align := alClient;

  end;

end;

procedure TfrmMain.actShowGridExecute(Sender: TObject);
var
  c: TComponent;
begin
  // todo : mostrare la form per l'iserimento dei dati di un rapportino
  // ShowMessage('Mostra la la griglia dei rapportini')

  c := IsthereThisClass('TfrmGrid');

  if not Assigned(c) then
    c := TfrmGrid.Create(Self);

  with (c as TfrmGrid) do
  begin
    Parent := Self.Panel1;
    Align := alClient;
    SetCaption('Griglia rapportini');
    AttachDataSource(MDBawer.srcRapportini);

  end;

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  MDBawer.StartDB;
end;

function TfrmMain.IsthereThisClass(aClass: string): TComponent;
var
  i: integer;
  ok: Boolean;
begin

  ok := false;
  i := 0;
  result := nil;
  while (i < Self.ComponentCount) and (not ok) do
  begin
    if (Self.Components[i].ClassType = TfrmRapportino) or
      (Self.Components[i].ClassType = TfrmGrid) or
      (Self.Components[i].ClassType = TfrmWorker) then
      Tframe(Self.Components[i]).Parent := nil;

    ok := Self.Components[i].ClassName = aClass;
    inc(i)
  end;
  if ok then
  begin
    dec(i);
    result := Self.Components[i]
  end;

end;

end.
