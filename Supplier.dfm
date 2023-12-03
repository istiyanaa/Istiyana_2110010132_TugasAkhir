object Form7: TForm7
  Left = 290
  Top = 174
  Width = 690
  Height = 480
  Caption = 'Supplier'
  Color = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 328
    Top = 8
    Width = 87
    Height = 19
    Caption = 'Email Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 328
    Top = 40
    Width = 88
    Height = 19
    Caption = 'Jumlah Barang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 328
    Top = 72
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
  object Label5: TLabel
    Left = 328
    Top = 104
    Width = 82
    Height = 19
    Caption = 'Jumlah Harga'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 432
    Top = 8
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
  object Label11: TLabel
    Left = 432
    Top = 40
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
    Left = 432
    Top = 72
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
    Left = 432
    Top = 104
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
    Left = 16
    Top = 8
    Width = 67
    Height = 19
    Caption = 'Id Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 16
    Top = 40
    Width = 91
    Height = 19
    Caption = 'Nama Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 72
    Width = 97
    Height = 19
    Caption = 'Alamat Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 16
    Top = 104
    Width = 95
    Height = 19
    Caption = 'Telpon Supplier'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 120
    Top = 8
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
  object Label14: TLabel
    Left = 120
    Top = 40
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
    Left = 120
    Top = 72
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
  object Label16: TLabel
    Left = 120
    Top = 104
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
  object Edit2: TEdit
    Left = 128
    Top = 40
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 128
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 128
    Top = 104
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 440
    Top = 8
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 88
    Top = 144
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 176
    Top = 144
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 264
    Top = 144
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 352
    Top = 144
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 440
    Top = 144
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 8
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 528
    Top = 144
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 9
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 184
    Width = 625
    Height = 193
    DataSource = ds1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_supplier'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_supplier'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat_supplier'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp_supplier'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email_supplier'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah_barang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_satuan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah_harga'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 128
    Top = 8
    Width = 185
    Height = 21
    TabOrder = 11
  end
  object Edit6: TEdit
    Left = 440
    Top = 40
    Width = 185
    Height = 21
    TabOrder = 12
  end
  object Edit7: TEdit
    Left = 440
    Top = 72
    Width = 185
    Height = 21
    TabOrder = 13
  end
  object Edit8: TEdit
    Left = 440
    Top = 104
    Width = 185
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
      'C:\Program Files (x86)\Borland\Delphi7\Projects\Istiyana\libmysq' +
      'l.dll'
    Left = 8
    Top = 336
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from supplier')
    Params = <>
    Left = 56
    Top = 336
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 104
    Top = 336
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
    ReportOptions.LastChange = 45262.594128842600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 152
    Top = 336
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
      PaperWidth = 320.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      object ReportTitle1: TfrxReportTitle
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 1209.449600000000000000
        object Memo1: TfrxMemoView
          Left = 472.441250000000000000
          Top = 30.236240000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN TABEL SUPPLIER')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 45.354360000000000000
        Top = 90.708720000000000000
        Width = 1209.449600000000000000
        object Memo2: TfrxMemoView
          Top = 26.456710000000000000
          Width = 109.606370000000000000
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
            'Id Supplier')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 109.606370000000000000
          Top = 26.456710000000000000
          Width = 132.283550000000000000
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
            'Nama Supplier')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 241.889920000000000000
          Top = 26.456710000000000000
          Width = 154.960730000000000000
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
            'Alamat Supplier')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 396.850650000000000000
          Top = 26.456710000000000000
          Width = 154.960730000000000000
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
            'Telpon Supplier')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 551.811380000000000000
          Top = 26.456710000000000000
          Width = 222.992270000000000000
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
            'Email Supplier')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 774.803650000000000000
          Top = 26.456710000000000000
          Width = 109.606370000000000000
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
        end
        object Memo8: TfrxMemoView
          Left = 884.410020000000000000
          Top = 26.456710000000000000
          Width = 154.960730000000000000
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
            'Harga Satuan')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 1039.370750000000000000
          Top = 26.456710000000000000
          Width = 170.078850000000000000
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
            'Jumlah Harga')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 196.535560000000000000
        Width = 1209.449600000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo10: TfrxMemoView
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          DataField = 'id_supplier'
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
            '[frxdbdtst1."id_supplier"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 109.606370000000000000
          Width = 132.283550000000000000
          Height = 26.456710000000000000
          DataField = 'nama_supplier'
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
            '[frxdbdtst1."nama_supplier"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 241.889920000000000000
          Width = 154.960730000000000000
          Height = 26.456710000000000000
          DataField = 'alamat_supplier'
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
            '[frxdbdtst1."alamat_supplier"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 396.850650000000000000
          Width = 154.960730000000000000
          Height = 26.456710000000000000
          DataField = 'telp_supplier'
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
            '[frxdbdtst1."telp_supplier"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 551.811380000000000000
          Width = 222.992270000000000000
          Height = 26.456710000000000000
          DataField = 'email_supplier'
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
            '[frxdbdtst1."email_supplier"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 774.803650000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
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
        object Memo16: TfrxMemoView
          Left = 884.410020000000000000
          Width = 154.960730000000000000
          Height = 26.456710000000000000
          DataField = 'harga_satuan'
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
            '[frxdbdtst1."harga_satuan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 1039.370750000000000000
          Width = 173.858380000000000000
          Height = 26.456710000000000000
          DataField = 'jumlah_harga'
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
            '[frxdbdtst1."jumlah_harga"]')
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
    Left = 208
    Top = 336
  end
end
