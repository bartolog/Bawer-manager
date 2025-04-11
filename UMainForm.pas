unit UMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, cxClasses,
  dxBar, System.ImageList, Vcl.ImgList, cxImageList, cxGraphics, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    cxImageList1: TcxImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    ActionList1: TActionList;
    actNewRecord: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    grHome: TdxBarGroup;
    grView: TdxBarGroup;
    actShowGrid: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    Panel1: TPanel;
    procedure actNewRecordExecute(Sender: TObject);
    procedure actShowGridExecute(Sender: TObject);
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

procedure TfrmMain.actNewRecordExecute(Sender: TObject);
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
      Align := alClient

    end;

end;

procedure TfrmMain.actShowGridExecute(Sender: TObject);
var
  c: TComponent;
begin
  // todo : mostrare la form per l'iserimento dei dati di un rapportino
  //ShowMessage('Mostra la la griglia dei rapportini')

  c := IsthereThisClass('TfrmGrid');

  if not Assigned(c) then

    with TfrmGrid.Create(Self) do
    begin
      Parent := Self.Panel1;
      Align := alClient;
      SetCaption('Griglia rapportini')
    end

  else
    with (c as TfrmGrid) do
    begin
      Parent := Self.Panel1;
      Align := alClient  ;
      SetCaption('Griglia rapportini')

    end;

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
