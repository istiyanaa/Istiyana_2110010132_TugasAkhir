object Form8: TForm8
  Left = 201
  Top = 178
  Width = 928
  Height = 480
  Caption = 'Aplikasi Toko Pertanian'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mm1: TMainMenu
    Left = 56
    Top = 24
    object mniLogin1: TMenuItem
      Caption = 'Login'
    end
    object mniabel1: TMenuItem
      Caption = 'Tabel'
      object mniUser1: TMenuItem
        Caption = 'User'
        OnClick = mniUser1Click
      end
      object mniPembelian1: TMenuItem
        Caption = 'Barang'
        OnClick = mniPembelian1Click
      end
      object mniPembelian2: TMenuItem
        Caption = 'Pembelian'
        OnClick = mniPembelian2Click
      end
      object mniPenjualan1: TMenuItem
        Caption = 'Penjualan'
        OnClick = mniPenjualan1Click
      end
      object mniPelanggan1: TMenuItem
        Caption = 'Pelanggan'
        OnClick = mniPelanggan1Click
      end
      object mniStok1: TMenuItem
        Caption = 'Stok'
        OnClick = mniStok1Click
      end
      object mniSupplier1: TMenuItem
        Caption = 'Supplier'
        OnClick = mniSupplier1Click
      end
    end
  end
end
