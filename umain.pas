unit umain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  Menus, SpkToolbar, spkt_Tab, spkt_Pane, spkt_Buttons, spkt_Appearance;

type
  { TForm1 }

  TForm1 = class(TForm)
    ilAssetsLargeOff: TImageList;
    ilAssetsSmallOn: TImageList;
    ilAssetsLargeOn: TImageList;
    bEmpresa: TSpkLargeButton;
    ilAssetsSmallOff: TImageList;
    dmuUsuarios: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    dmnTema: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    SpkLargeButton1: TSpkLargeButton;
    SpkLargeButton2: TSpkLargeButton;
    SpkLargeButton3: TSpkLargeButton;
    SpkLargeButton4: TSpkLargeButton;
    SpkLargeButton5: TSpkLargeButton;
    SpkLargeButton6: TSpkLargeButton;
    SpkLargeButton7: TSpkLargeButton;
    SpkPane1: TSpkPane;
    SpkPane2: TSpkPane;
    SpkPane3: TSpkPane;
    SpkPane4: TSpkPane;
    SpkPane5: TSpkPane;
    SpkPane6: TSpkPane;
    SpkTab1: TSpkTab;
    SpkTab10: TSpkTab;
    SpkTab2: TSpkTab;
    SpkTab3: TSpkTab;
    SpkTab4: TSpkTab;
    SpkTab5: TSpkTab;
    SpkTab6: TSpkTab;
    SpkTab7: TSpkTab;
    SpkTab8: TSpkTab;
    SpkTab9: TSpkTab;
    spkBarra: TSpkToolbar;
    StatusBar1: TStatusBar;
    procedure MenuItem3Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  tema : String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  case (Sender as TMenuItem).Tag of
  0: spkBarra.Style:= spkMetroDark;
  1: spkBarra.Style:= spkMetroLight;
  2: spkBarra.Style:= spkOffice2007Blue;
  3: spkBarra.Style:= spkOffice2007Silver;
  4: spkBarra.Style:= spkOffice2007SilverTurquoise;
  end;
end;

end.

