unit UnitLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm9 = class(TForm)
    shp1: TShape;
    shp2: TShape;
    shp3: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses UnitSetelahLogin;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
if (Edit1.Text='Admin') and (Edit2.Text='Admin')
  then
  begin
    form10.show;
    end
    else
    ShowMessage('Username atau Password salah');
  end;

procedure TForm9.Button2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
end;

end.
