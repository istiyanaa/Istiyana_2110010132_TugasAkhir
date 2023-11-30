object Form6: TForm6
  Left = 346
  Top = 176
  Width = 630
  Height = 480
  Caption = 'Stok'
  Color = clInfoBk
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
    Top = 40
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
    Left = 24
    Top = 72
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
  object Label11: TLabel
    Left = 128
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
    Left = 128
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
  object lbl1: TLabel
    Left = 16
    Top = 8
    Width = 40
    Height = 19
    Caption = 'STOK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Century725 Cn BT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit3: TEdit
    Left = 144
    Top = 40
    Width = 417
    Height = 21
    TabOrder = 0
  end
  object Edit4: TEdit
    Left = 144
    Top = 72
    Width = 417
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 40
    Top = 120
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 128
    Top = 120
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 216
    Top = 120
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 304
    Top = 120
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 392
    Top = 120
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 480
    Top = 120
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 7
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 160
    Width = 553
    Height = 177
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'pertanian_db'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\Tugas\libmysql.d' +
      'll'
    Left = 24
    Top = 296
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from stok')
    Params = <>
    Left = 72
    Top = 296
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 120
    Top = 296
  end
  object frxrprt1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45258.108505706020000000
    ReportOptions.LastChange = 45258.108505706020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 168
    Top = 296
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSource = ds1
    Left = 224
    Top = 296
  end
end
