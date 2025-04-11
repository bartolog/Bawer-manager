unit UCommon;

interface

uses
System.Classes,
System.SysUtils,
vcl.Dialogs

;




function ShowMessage(aMessage : string) : Integer ;


implementation

function ShowMessage(aMessage : string) : Integer ;
begin
  with TTaskDialog.Create(nil) do
  begin
    try
      Caption := 'Messaggio';
      Title := 'Todo';
      Text := aMessage;
      CommonButtons := [tcbOk];
      MainIcon := tdiInformation;
      if Execute then
        result := ModalResult

    finally
      free
    end;
  end;
end;





end.
