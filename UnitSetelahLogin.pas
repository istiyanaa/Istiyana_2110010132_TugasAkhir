unit UnitSetelahLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TForm10 = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    Label7: TLabel;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit6: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Edit7: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Edit8: TEdit;
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.btn1Click(Sender: TObject);
begin
  bersih;
  btn1.Enabled:= False;
  btn2.Enabled:= True;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= True;
  Edit1.Enabled:= True;
  Edit2.Enabled:= True;
  Edit3.Enabled:= True;
  Edit4.Enabled:= True;
  Edit5.Enabled:= True;
  Edit6.Enabled:= True;
  Edit7.Enabled:= True;
  Edit8.Enabled:= True;
end;

procedure TForm10.bersih;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
  Edit7.Clear;
  Edit8.Clear;
end;

procedure TForm10.posisiawal;
begin
  bersih;
  btn1.Enabled:= True;
  btn2.Enabled:= False;
  btn3.Enabled:= False;
  btn4.Enabled:= False;
  btn5.Enabled:= False;
  Edit1.Enabled:= False;
  Edit2.Enabled:= False;
  Edit3.Enabled:= False;
  Edit4.Enabled:= False;
  Edit5.Enabled:= False;
  Edit6.Enabled:= False;
  Edit7.Enabled:= False;
  Edit8.Enabled:= False;
end;

procedure TForm10.btn2Click(Sender: TObject);
begin
if Edit1.Text = '' then
    ShowMessage('Id Transaksi tidak boleh kosong!')
  else if Edit2.Text = '' then
    ShowMessage('Id Pembeli tidak boleh kosong!')
  else if Edit3.Text = '' then
    ShowMessage('Id Barang tidak boleh kosong!')
  else if Edit4.Text = '' then
    ShowMessage('Nama Barang tidak boleh kosong!')
  else if Edit5.Text = '' then
    ShowMessage('Tanggal tidak boleh kosong!')
  else if Edit6.Text = '' then
    ShowMessage('Jumlah tidak boleh kosong!')
  else if Edit7.Text = '' then
    ShowMessage('Harga Satuan tidak boleh kosong!')
  else if Edit8.Text = '' then
    ShowMessage('Total Harga tidak boleh kosong!')
  else
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('INSERT INTO transaksi (id_transaksi, id_pembelian, id_barang, nama_barang, tanggal, jumlah, harga_satuan, total_harga) ' +
                  'VALUES (:id_transaksi, :id_pembelian, :id_barang, :nama_barang, :tanggal, :jumlah, :harga_satuan, :total_harga)');
    zqry1.ParamByName('id_transaksi').AsString := Edit1.Text;
    zqry1.ParamByName('id_pembelian').AsString := Edit2.Text;
    zqry1.ParamByName('id_barang').AsString := Edit3.Text;
    zqry1.ParamByName('nama_barang').AsString := Edit4.Text;
    zqry1.ParamByName('tanggal').AsString := Edit5.Text;
    zqry1.ParamByName('jumlah').AsString := Edit6.Text;
    zqry1.ParamByName('harga_satuan').AsString := Edit7.Text;
    zqry1.ParamByName('total_harga').AsString := Edit8.Text;
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM transaksi');
    zqry1.Open;
    ShowMessage('Data berhasil disimpan!');
    posisiawal;
  end;
end;

end.
