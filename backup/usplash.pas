unit uSplash;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, BGRAFlashProgressBar;

type

  { TfSplash }

  TfSplash = class(TForm)
    pbBarra: TBGRAFlashProgressBar;
    Image1: TImage;
    Label1: TLabel;
    lMensagem: TLabel;
    tContador: TTimer;
    procedure lMensagemClick(Sender: TObject);
    procedure tContadorTimer(Sender: TObject);
  private
    indice : byte;
  public

  end;

var
  fSplash: TfSplash;

implementation

{$R *.lfm}

{ TfSplash }

procedure TfSplash.tContadorTimer(Sender: TObject);
const
  msgs : array [0..5] of string =
  ('Preparando o ambiente...',
   'Verificando licença...',
   'Validando configurações...',
   'Criando formulários...',
   'Verificando banco de dados...',
   'Tudo pronto!'
  );
begin
  case pbBarra.Value of
    00: lMensagem.Caption := msgs[0];
    20: lMensagem.Caption := msgs[1];
    40: lMensagem.Caption := msgs[2];
    60: lMensagem.Caption := msgs[3];
    80: lMensagem.Caption := msgs[4];
    100: lMensagem.Caption := msgs[5];
  end;

  if (pbBarra.Value = 100) then
    begin
         tContador.Enabled:=False;
         Sleep(1000);
         Close;
    end;
  pbBarra.Value:=pbBarra.Value + 1;

end;

procedure TfSplash.lMensagemClick(Sender: TObject);
begin
  indice:= 1;
end;

end.

