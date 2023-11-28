unit User;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    Button4: TButton;
    Button5: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    btn1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bersih;
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  bersih;
  Button1.Enabled:= False;
  Button2.Enabled:= True;
  Button3.Enabled:= False;
  Button4.Enabled:= False;
  Button5.Enabled:= True;
  Edit1.Enabled:= True;
  Edit2.Enabled:= True;
  Edit3.Enabled:= True;
  Edit4.Enabled:= True;
  Edit5.Enabled:= True;
  Edit6.Enabled:= True;
  Edit7.Enabled:= True;
  Edit8.Enabled:= True;

end;

procedure TForm1.posisiawal;
begin
  bersih;
  Button1.Enabled:= True;
  Button2.Enabled:= False;
  Button3.Enabled:= False;
  Button4.Enabled:= False;
  Button5.Enabled:= False;
  Edit1.Enabled:= False;
  Edit2.Enabled:= False;
  Edit3.Enabled:= False;
  Edit4.Enabled:= False;
  Edit5.Enabled:= False;
  Edit6.Enabled:= False;
  Edit7.Enabled:= False;
  Edit8.Enabled:= False;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if Edit1.Text = '' then
    ShowMessage('Id User tidak boleh kosong!')
  else if Edit2.Text = '' then
    ShowMessage('Nama Lengkap tidak boleh kosong!')
  else if Edit3.Text = '' then
    ShowMessage('Username tidak boleh kosong!')
  else if Edit4.Text = '' then
    ShowMessage('Password tidak boleh kosong!')
  else if Edit5.Text = '' then
    ShowMessage('Jenis Kelamin tidak boleh kosong!')
  else if Edit6.Text = '' then
    ShowMessage('Alamat tidak boleh kosong!')
  else if Edit7.Text = '' then
    ShowMessage('Email tidak boleh kosong!')
  else if Edit8.Text = '' then
    ShowMessage('Level User tidak boleh kosong!')
  else
  begin
    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('INSERT INTO user (id_user, nama_lengkap, username, password, jenis_kelamin, alamat, email, level_user) ' +
                  'VALUES (:id_user, :nama_lengkap, :username, :password, :jenis_kelamin, :alamat, :email, :level_user)');
    ZQuery1.ParamByName('id_user').AsString := Edit1.Text;
    ZQuery1.ParamByName('nama_lengkap').AsString := Edit2.Text;
    ZQuery1.ParamByName('username').AsString := Edit3.Text;
    ZQuery1.ParamByName('password').AsString := Edit4.Text;
    ZQuery1.ParamByName('jenis_kelamin').AsString := Edit5.Text;
    ZQuery1.ParamByName('alamat').AsString := Edit6.Text;
    ZQuery1.ParamByName('email').AsString := Edit7.Text;
    ZQuery1.ParamByName('level_user').AsString := Edit8.Text;
    ZQuery1.ExecSQL;

    ZQuery1.SQL.Clear;
    ZQuery1.SQL.Add('SELECT * FROM user');
    ZQuery1.Open;
    ShowMessage('Data berhasil disimpan!');
    posisiawal;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  idUser: string;
begin
  if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') or (Edit4.Text = '') or (Edit5.Text = '') or (Edit6.Text = '') or (Edit7.Text = '') or (Edit8.Text = '')then
  begin
    ShowMessage('Semua input harus diisi!');
  end
  else
  begin
    // Pastikan Anda memperoleh ID saat ini sebelum melakukan Edit
    idUser := ZQuery1.FieldByName('id_user').AsString;

    // Cek apakah ID input sama dengan ID yang ada di database
    if Edit1.Text = idUser then
    begin
      ZQuery1.Edit;
      ZQuery1.FieldByName('id_user').AsString := Edit1.Text;
      ZQuery1.FieldByName('nama_lengkap').AsString := Edit2.Text;
      ZQuery1.FieldByName('username').AsString := Edit3.Text;
      ZQuery1.FieldByName('password').AsString :=Edit4.Text;
      ZQuery1.FieldByName('jenis_kelamin').AsString := Edit5.Text;
      ZQuery1.FieldByName('alamat').AsString := Edit6.Text;
      ZQuery1.FieldByName('email').AsString := Edit7.Text;
      ZQuery1.FieldByName('level_user').AsString := Edit8.Text;
      ZQuery1.Post;

      ShowMessage('Data berhasil diperbarui!');
      posisiawal;
    end
    else
    begin
      ShowMessage('Perubahan ID tidak diizinkan');
      posisiawal;
    end;
  end;

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  idUser: string;
begin
  // Memeriksa apakah ada baris yang dipilih untuk dihapus
  if not ZQuery1.IsEmpty then
  begin
    // Mengambil nilai ID dari kolom id_user
    idUser := ZQuery1.FieldByName('id_user').AsString;

    // Konfirmasi penghapusan
    if MessageDlg('Anda yakin ingin menghapus data dengan ID ' + idUser + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      ZQuery1.Delete;
      ShowMessage('Data berhasil dihapus!');
      posisiawal; // Kembali ke posisi awal setelah penghapusan
    end;
  end
  else
  begin
    ShowMessage('Tidak ada data yang dipilih untuk dihapus!');
  end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text := ZQuery1.FieldByName('id_user').AsString;
  Edit2.Text := ZQuery1.FieldByName('nama_lengkap').AsString;
  Edit3.Text := ZQuery1.FieldByName('username').AsString;
  Edit4.Text := ZQuery1.FieldByName('password').AsString;
  Edit5.Text := ZQuery1.FieldByName('jenis_kelamin').AsString;
  Edit6.Text := ZQuery1.FieldByName('alamat').AsString;
  Edit7.Text := ZQuery1.FieldByName('email').AsString;
  Edit8.Text := ZQuery1.FieldByName('level_user').AsString;

  Edit1.Enabled := True;
  Edit2.Enabled := True;
  Edit3.Enabled := True;
  Edit4.Enabled := True;
  Edit5.Enabled := True;

  Button1.Enabled := False;
  Button2.Enabled := True;
  Button3.Enabled := True;
  Button4.Enabled := True;
  Button5.Enabled := True;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
posisiawal;
end;

end.