program CORE;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uSplash, umain
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;

  { Cria a tela de splash }
  fSplash := TfSplash.Create(nil) ;
  fSplash.Show;
  fSplash.Update;

  repeat
    Application.ProcessMessages;
  until fSplash.Visible = false;

  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

