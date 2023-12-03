object Form2: TForm2
  Left = 254
  Top = 167
  Width = 658
  Height = 422
  Caption = 'Barang'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 40
    Top = 72
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
  object Label4: TLabel
    Left = 328
    Top = 8
    Width = 41
    Height = 19
    Caption = 'Satuan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 328
    Top = 40
    Width = 64
    Height = 19
    Caption = 'Harga Beli'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 328
    Top = 72
    Width = 64
    Height = 19
    Caption = 'Harga Jual'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 40
    Top = 8
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
  object Label2: TLabel
    Left = 40
    Top = 40
    Width = 46
    Height = 19
    Caption = 'Id Stok'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Edit3: TEdit
    Left = 136
    Top = 72
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object Edit4: TEdit
    Left = 416
    Top = 8
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object Edit5: TEdit
    Left = 416
    Top = 40
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object Edit6: TEdit
    Left = 416
    Top = 72
    Width = 161
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 40
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 136
    Top = 112
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 232
    Top = 112
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 320
    Top = 112
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 408
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 8
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 504
    Top = 112
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 9
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 152
    Width = 556
    Height = 201
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
        FieldName = 'id_barang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_stok'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_barang'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'satuan'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_beli'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_jual'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 136
    Top = 8
    Width = 169
    Height = 21
    TabOrder = 11
  end
  object Edit2: TEdit
    Left = 136
    Top = 40
    Width = 169
    Height = 21
    TabOrder = 12
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
    Left = 48
    Top = 304
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from barang')
    Params = <>
    Left = 96
    Top = 304
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 144
    Top = 304
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
    ReportOptions.LastChange = 45262.580087071760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 192
    Top = 304
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 328.819110000000000000
          Top = 26.456710000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN TABEL BARANG')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 86.929190000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Top = 22.677180000000000000
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
            'Id Barang')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 109.606370000000000000
          Top = 22.677180000000000000
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
            'Id Stok')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 219.212740000000000000
          Top = 22.677180000000000000
          Width = 143.622140000000000000
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
        end
        object Memo5: TfrxMemoView
          Left = 362.834880000000000000
          Top = 22.677180000000000000
          Width = 128.504020000000000000
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
            'Satuan')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 491.338900000000000000
          Top = 22.677180000000000000
          Width = 151.181200000000000000
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
            'Harga Beli')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 642.520100000000000000
          Top = 22.677180000000000000
          Width = 151.181200000000000000
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
            'Harga Jual')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 188.976500000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo8: TfrxMemoView
          Width = 109.606370000000000000
          Height = 30.236240000000000000
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
        object Memo9: TfrxMemoView
          Left = 109.606370000000000000
          Width = 109.606370000000000000
          Height = 30.236240000000000000
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
        object Memo10: TfrxMemoView
          Left = 219.212740000000000000
          Width = 143.622140000000000000
          Height = 30.236240000000000000
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
        object Memo11: TfrxMemoView
          Left = 362.834880000000000000
          Width = 128.504020000000000000
          Height = 30.236240000000000000
          DataField = 'satuan'
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
            '[frxdbdtst1."satuan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 491.338900000000000000
          Width = 151.181200000000000000
          Height = 30.236240000000000000
          DataField = 'harga_beli'
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
            '[frxdbdtst1."harga_beli"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 642.520100000000000000
          Width = 151.181200000000000000
          Height = 30.236240000000000000
          DataField = 'harga_jual'
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
            '[frxdbdtst1."harga_jual"]')
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
    Left = 248
    Top = 304
  end
end
