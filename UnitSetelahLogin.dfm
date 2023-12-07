object Form10: TForm10
  Left = 461
  Top = 117
  Width = 680
  Height = 548
  Caption = 'transaksi'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 24
    Top = 80
    Width = 60
    Height = 19
    Caption = 'Id Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 112
    Width = 84
    Height = 19
    Caption = 'Nama Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 128
    Top = 80
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 128
    Top = 112
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 74
    Height = 19
    Caption = 'Id Transaksi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 65
    Height = 19
    Caption = 'Id Pembeli'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 128
    Top = 16
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 128
    Top = 48
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 24
    Top = 144
    Width = 46
    Height = 19
    Caption = 'Tanggal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 128
    Top = 144
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 24
    Top = 176
    Width = 41
    Height = 19
    Caption = 'Jumlah'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 128
    Top = 176
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 24
    Top = 208
    Width = 82
    Height = 19
    Caption = 'Harga Satuan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 128
    Top = 208
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 24
    Top = 240
    Width = 71
    Height = 19
    Caption = 'Total Harga'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel
    Left = 128
    Top = 240
    Width = 4
    Height = 21
    Caption = ':'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Edit3: TEdit
    Left = 144
    Top = 80
    Width = 417
    Height = 21
    TabOrder = 0
  end
  object Edit4: TEdit
    Left = 144
    Top = 112
    Width = 417
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 40
    Top = 280
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 128
    Top = 280
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 216
    Top = 280
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 4
  end
  object btn4: TButton
    Left = 304
    Top = 280
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
  end
  object btn5: TButton
    Left = 392
    Top = 280
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
  end
  object btn6: TButton
    Left = 480
    Top = 280
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 7
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 320
    Width = 553
    Height = 177
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 144
    Top = 16
    Width = 417
    Height = 21
    TabOrder = 9
  end
  object Edit2: TEdit
    Left = 144
    Top = 48
    Width = 417
    Height = 21
    TabOrder = 10
  end
  object Edit5: TEdit
    Left = 144
    Top = 144
    Width = 417
    Height = 21
    TabOrder = 11
  end
  object Edit6: TEdit
    Left = 144
    Top = 176
    Width = 417
    Height = 21
    TabOrder = 12
  end
  object Edit7: TEdit
    Left = 144
    Top = 208
    Width = 417
    Height = 21
    TabOrder = 13
  end
  object Edit8: TEdit
    Left = 144
    Top = 240
    Width = 417
    Height = 21
    TabOrder = 14
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'toko_pertanian'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\Tugas\libmysql.d' +
      'll'
    Left = 32
    Top = 456
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from transaksi')
    Params = <>
    Left = 72
    Top = 456
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 120
    Top = 456
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45258.108505706000000000
    ReportOptions.LastChange = 45262.573145868050000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 168
    Top = 456
    Datasets = <
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 160.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      object ReportTitle1: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 604.724800000000000000
        object Memo1: TfrxMemoView
          Left = 215.433210000000000000
          Top = 26.456710000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN TABEL STOK')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 86.929190000000000000
        Width = 604.724800000000000000
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Stok')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 139.842610000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Id Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 279.685220000000000000
          Top = 18.897650000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 445.984540000000000000
          Top = 18.897650000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Barang')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 604.724800000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          DataField = 'id_stok'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."id_stok"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 139.842610000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          DataField = 'id_barang'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."id_barang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 279.685220000000000000
          Width = 166.299320000000000000
          Height = 22.677180000000000000
          DataField = 'nama_barang'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."nama_barang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 445.984540000000000000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          DataField = 'jumlah_barang'
          DataSet = frxdbdtst1
          DataSetName = 'frxdbdtst1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxdbdtst1."jumlah_barang"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 224
    Top = 456
  end
end
