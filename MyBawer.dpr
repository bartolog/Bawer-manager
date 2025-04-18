program MyBawer;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Vcl.Forms,
  UMainForm in 'UMainForm.pas' {frmMain},
  UCommon in 'UCommon.pas',
  UFrmRapportino in 'UFrmRapportino.pas' {frmRapportino: TFrame},
  UEntities in 'UEntities.pas',
  UDataContainer in 'UDataContainer.pas' {MDBawer: TDataModule},
  UFrmGrid in 'UFrmGrid.pas' {frmGrid: TFrame},
  UfrmWorker in 'UfrmWorker.pas' {frmWorker: TFrame},
  UProductParams in 'UProductParams.pas' {frmProductParams: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TMDBawer, MDBawer);
  Application.Run;
end.
