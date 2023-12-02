unit Stok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TForm6 = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure bersih;
    procedure posisiawal;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.bersih;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
end;

procedure TForm6.btn1Click(Sender: TObject);
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
end;

procedure TForm6.posisiawal;
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
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
if Edit1.Text = '' then
    ShowMessage('Id Stok tidak boleh kosong!')
  else if Edit2.Text = '' then
    ShowMessage('Id Barang tidak boleh kosong!')
  else if Edit3.Text = '' then
    ShowMessage('Nama Barang tidak boleh kosong!')
  else if Edit4.Text = '' then
    ShowMessage('Jumlah Barang tidak boleh kosong!')
  else
  begin
    zqry1.SQL.Clear;
    zqry1.SQL.Add('INSERT INTO stok (id_stok, id_barang, nama_barang, jumlah_barang) ' +
                  'VALUES (:id_stok, :id_barang, :nama_barang, :jumlah_barang)');
    zqry1.ParamByName('id_stok').AsString := Edit1.Text;
    zqry1.ParamByName('id_barang').AsString := Edit2.Text;
    zqry1.ParamByName('nama_barang').AsString := Edit3.Text;
    zqry1.ParamByName('jumlah_barang').AsString := Edit4.Text;
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM stok');
    zqry1.Open;
    ShowMessage('Data berhasil disimpan!');
    posisiawal;
  end;
end;

procedure TForm6.btn3Click(Sender: TObject);
var
  idStok: string;
  idBarangBeforeEdit: string;
  namaBarangBeforeEdit: string;
  jumlahBarangBeforeEdit: string;
begin
  if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') or (Edit4.Text = '') then
  begin
    ShowMessage('Semua input harus diisi!');
  end
  else
  begin
    idStok := zqry1.FieldByName('id_stok').AsString;
    idBarangBeforeEdit := zqry1.FieldByName('id_barang').AsString;
    namaBarangBeforeEdit := zqry1.FieldByName('nama_barang').AsString;
    jumlahBarangBeforeEdit := zqry1.FieldByName('jumlah_barang').AsString;

    if (Edit1.Text <> idStok) or (Edit2.Text <> idBarangBeforeEdit) or
       (Edit3.Text <> namaBarangBeforeEdit) or (Edit4.Text <> jumlahBarangBeforeEdit) then
    begin
      zqry1.Edit;
      zqry1.FieldByName('id_stok').AsString := Edit1.Text;
      zqry1.FieldByName('id_barang').AsString := Edit2.Text;
      zqry1.FieldByName('nama_barang').AsString := Edit3.Text;
      zqry1.FieldByName('jumlah_barang').AsString := Edit4.Text;
      zqry1.Post;

      ShowMessage('Data berhasil diperbarui!');
      PosisiAwal;
    end
    else
    begin
      ShowMessage('Data tidak ada perubahan');
      PosisiAwal;
    end;
  end;
  end;

procedure TForm6.btn4Click(Sender: TObject);
var
  idUser: string;
begin
  // Memeriksa apakah ada baris yang dipilih untuk dihapus
  if not zqry1.IsEmpty then
  begin
    // Mengambil nilai ID dari kolom id_user
    idUser := zqry1.FieldByName('id_stok').AsString;

    // Konfirmasi penghapusan
    if MessageDlg('Anda yakin ingin menghapus data dengan ID ' + idUser + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      zqry1.Delete;
      ShowMessage('Data berhasil dihapus!');
      posisiawal; // Kembali ke posisi awal setelah penghapusan
    end;
  end
  else
  begin
    ShowMessage('Tidak ada data yang dipilih untuk dihapus!');
  end;

end;

procedure TForm6.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
  Edit1.Text := zqry1.FieldByName('id_stok').AsString;
  Edit2.Text := zqry1.FieldByName('id_barang').AsString;
  Edit3.Text := zqry1.FieldByName('nama_barang').AsString;
  Edit4.Text := zqry1.FieldByName('jumlah_barang').AsString;

  Edit1.Enabled := True;
  Edit2.Enabled := True;
  Edit3.Enabled := True;
  Edit4.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
end;


end.
