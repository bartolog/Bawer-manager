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
  UDataContainer in 'UDataContainer.pas' {DataModule1: TDataModule},
  UFrmGrid in 'UFrmGrid.pas' {frmGrid: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
