unit Barang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, frxClass, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm2 = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
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
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    procedure Bersih;
    procedure PosisiAwal;
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
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Bersih;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit6.Clear;
end;

procedure TForm2.PosisiAwal;
begin
  Bersih;
  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := False;
  Edit1.Enabled := False;
  Edit2.Enabled := False;
  Edit3.Enabled := False;
  Edit4.Enabled := False;
  Edit5.Enabled := False;
  Edit6.Enabled := False;
end;

procedure TForm2.btn1Click(Sender: TObject);
begin
  Bersih;
  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := True;
  Edit1.Enabled := True;
  Edit2.Enabled := True;
  Edit3.Enabled := True;
  Edit4.Enabled := True;
  Edit5.Enabled := True;
  Edit6.Enabled := True;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') or
     (Edit4.Text = '') or (Edit5.Text = '') or (Edit6.Text = '') then
  begin
    ShowMessage('Semua input harus diisi!');
  end
  else
  begin
    // Ubah query INSERT INTO dengan kolom yang sesuai dengan struktur tabel 'barang'
    zqry1.SQL.Clear;
    zqry1.SQL.Add('INSERT INTO barang (id_barang, id_stok, nama_barang, satuan, harga_beli, harga_jual) ' +
                  'VALUES ("'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'")');
    zqry1.ExecSQL;

    zqry1.SQL.Clear;
    zqry1.SQL.Add('SELECT * FROM barang');
    zqry1.Open;
    ShowMessage('Data berhasil disimpan!');
    PosisiAwal;
  end;
end;

procedure TForm2.btn3Click(Sender: TObject);
var
  idBarang: string;
  idStokBeforeEdit: string;
  namaBarangBeforeEdit: string;
  satuanBeforeEdit: string;
  hargaBeliBeforeEdit: string;
  hargaJualBeforeEdit: string;
begin
  if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') or
     (Edit4.Text = '') or (Edit5.Text = '') or (Edit6.Text = '') then
  begin
    ShowMessage('Semua input harus diisi!');
  end
  else
  begin
    idBarang := zqry1.FieldByName('id_barang').AsString;
    idStokBeforeEdit := zqry1.FieldByName('id_stok').AsString;
    namaBarangBeforeEdit := zqry1.FieldByName('nama_barang').AsString;
    satuanBeforeEdit := zqry1.FieldByName('satuan').AsString;
    hargaBeliBeforeEdit := zqry1.FieldByName('harga_beli').AsString;
    hargaJualBeforeEdit := zqry1.FieldByName('harga_jual').AsString;

    if (Edit1.Text <> idBarang) or (Edit2.Text <> idStokBeforeEdit) or
       (Edit3.Text <> namaBarangBeforeEdit) or (Edit4.Text <> satuanBeforeEdit) or
       (Edit5.Text <> hargaBeliBeforeEdit) or (Edit6.Text <> hargaJualBeforeEdit) then
    begin
      zqry1.Edit;
      zqry1.FieldByName('id_barang').AsString := Edit1.Text;
      zqry1.FieldByName('id_stok').AsString := Edit2.Text;
      zqry1.FieldByName('nama_barang').AsString := Edit3.Text;
      zqry1.FieldByName('satuan').AsString := Edit4.Text;
      zqry1.FieldByName('harga_beli').AsString := Edit5.Text;
      zqry1.FieldByName('harga_jual').AsString := Edit6.Text;
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

procedure TForm2.btn4Click(Sender: TObject);
var
  idBarang: string;
begin
  if not zqry1.IsEmpty then
  begin
    idBarang := zqry1.FieldByName('id_barang').AsString;

    if MessageDlg('Anda yakin ingin menghapus data dengan ID ' + idBarang + '?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      zqry1.Delete;
      ShowMessage('Data berhasil dihapus!');
      PosisiAwal;
    end;
  end
  else
  begin
    ShowMessage('Tidak ada data yang dipilih untuk dihapus!');
  end;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
  PosisiAwal;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
  Edit1.Text := zqry1.FieldByName('id_barang').AsString;
  Edit2.Text := zqry1.FieldByName('id_stok').AsString;
  Edit3.Text := zqry1.FieldByName('nama_barang').AsString;
  Edit4.Text := zqry1.FieldByName('satuan').AsString;
  Edit5.Text := zqry1.FieldByName('harga_beli').AsString;
  Edit6.Text := zqry1.FieldByName('harga_jual').AsString;

  Edit1.Enabled := True;
  Edit2.Enabled := True;
  Edit3.Enabled := True;
  Edit4.Enabled := True;
  Edit5.Enabled := True;
  Edit6.Enabled := True;

  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
end;

end.

