unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnHitung: TButton;
    edtNama: TEdit;
    edtNilai: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel1: TPanel;
    procedure btnHitungClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    nilai: double;
    grade: string;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;

procedure TForm1.btnHitungClick(Sender: TObject);
begin
  nilai:= StrToFloat(edtNilai.Text);

  if nilai > 70 then
     begin
        Label4.Caption:= 'LULUS';
        Label4.Font.Color:= clGreen;
     end
  else
    begin
       Label4.Caption:= 'TIDAK LULUS';
       Label4.Font.Color:= clRed;
    end;

  if (Nilai >= 85) then
       begin
          Label6.Caption:='A';
          Grade := 'A';
       end
    else if (Nilai >= 75) then
       begin
          Label6.Caption:='B';
          Grade := 'B';
       end
    else if (Nilai >= 60) then
       begin
          Label6.Caption:='C';
          Grade := 'C';
       end
    else if (Nilai >= 45) then
       begin
          Label6.Caption:='D';
          Grade := 'D';
       end
    else
    begin
       Label6.Caption:='E';
       Grade := 'E';
    end;

    case Grade of
      'A', 'B': Label6.Font.Color := clGreen;
      'C': Label6.Font.Color := clYellow;
    else Label6.Font.Color := clRed;

end;



end;

end.

