object Form5: TForm5
  Left = 295
  Top = 230
  Width = 679
  Height = 407
  Caption = 'Pelanggan'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 40
    Width = 102
    Height = 19
    Caption = 'Nama Pelanggan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 72
    Width = 106
    Height = 19
    Caption = 'Telpon Pelanggan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 320
    Top = 8
    Width = 98
    Height = 19
    Caption = 'Email Pelanggan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 320
    Top = 40
    Width = 43
    Height = 19
    Caption = 'Alamat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 139
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
  object Label9: TLabel
    Left = 139
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
  object Label10: TLabel
    Left = 433
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
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 78
    Height = 19
    Caption = 'Id Pelanggan'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 139
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
  object Edit2: TEdit
    Left = 152
    Top = 40
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 152
    Top = 72
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 448
    Top = 8
    Width = 153
    Height = 21
    TabOrder = 2
  end
  object Edit5: TEdit
    Left = 448
    Top = 40
    Width = 153
    Height = 21
    TabOrder = 3
  end
  object btn1: TButton
    Left = 56
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 144
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
  object btn6: TButton
    Left = 504
    Top = 112
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 8
    OnClick = btn6Click
  end
  object Button1: TButton
    Left = 416
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 152
    Width = 577
    Height = 193
    DataSource = ds1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_pelanggan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_Lengkap'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telp_pelanggan'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email_pelanggan'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Width = 110
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 152
    Top = 8
    Width = 153
    Height = 21
    TabOrder = 11
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
    Left = 16
    Top = 280
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from pelanggan')
    Params = <>
    Left = 64
    Top = 280
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 112
    Top = 280
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
    ReportOptions.LastChange = 45262.597757256950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 160
    Top = 280
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
          Left = 279.685220000000000000
          Top = 22.677180000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN TABEL PELANGGAN')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 45.354360000000000000
        Top = 86.929190000000000000
        Width = 793.701300000000000000
        object Memo2: TfrxMemoView
          Top = 26.456710000000000000
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
            'Id Pelanggan')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 151.181200000000000000
          Top = 26.456710000000000000
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
            'Nama Lengkap')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 302.362400000000000000
          Top = 26.456710000000000000
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
            'Telepon ')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 453.543600000000000000
          Top = 26.456710000000000000
          Width = 188.976500000000000000
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
            'Email')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 642.520100000000000000
          Top = 26.456710000000000000
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
            'Alamat')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 192.756030000000000000
        Width = 793.701300000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxdbdtst1'
        RowCount = 0
        object Memo7: TfrxMemoView
          Width = 151.181200000000000000
          Height = 26.456710000000000000
          DataField = 'id_pelanggan'
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
            '[frxdbdtst1."id_pelanggan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 151.181200000000000000
          Width = 151.181200000000000000
          Height = 26.456710000000000000
          DataField = 'nama_Lengkap'
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
            '[frxdbdtst1."nama_Lengkap"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 302.362400000000000000
          Width = 151.181200000000000000
          Height = 26.456710000000000000
          DataField = 'telp_pelanggan'
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
            '[frxdbdtst1."telp_pelanggan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 453.543600000000000000
          Width = 188.976500000000000000
          Height = 26.456710000000000000
          DataField = 'email_pelanggan'
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
            '[frxdbdtst1."email_pelanggan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 642.520100000000000000
          Width = 154.960730000000000000
          Height = 26.456710000000000000
          DataField = 'alamat'
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
            '[frxdbdtst1."alamat"]')
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
    Left = 216
    Top = 280
  end
end
