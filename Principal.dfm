object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Exporta'#231#227'o Contas a Pagar Farm'#225'cia'
  ClientHeight = 440
  ClientWidth = 1043
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1043
    Height = 65
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1043
      65)
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 24
      Height = 13
      Caption = 'Filial:'
    end
    object Label2: TLabel
      Left = 167
      Top = 13
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label3: TLabel
      Left = 262
      Top = 13
      Width = 52
      Height = 13
      Caption = 'Data Final:'
    end
    object labelPesquisa: TLabel
      Left = 376
      Top = 23
      Width = 48
      Height = 16
      Caption = 'Per'#237'odo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 376
      Top = 40
      Width = 97
      Height = 16
      Caption = 'Valor Total (R$):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 376
      Top = 6
      Width = 77
      Height = 16
      Caption = 'Farm'#225'cia ....'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnPesquisar: TBitBtn
      Left = 949
      Top = 6
      Width = 86
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Pesquisar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFE4E4E4
        BEBEBEE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFCFCFCA0A0A0B5B4B4919191F7F7F7FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDB
        B7B1B2B1B1B1949494FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7C1BDBF9F9F9FADADADFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFEB5B5B5C3C2C3898A8AD4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCAAAAAAB8B9BB757575E2
        E2E2DADADAC0C0C0CBCBCBF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFBFBA3A4A4A3A4A57A7A7AC2C2C2DBDBDBD0D0CF9F9FA0B2B2
        B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDC8C8C8B5B3B5F6
        F6F5FBFBFBFEFEFEFEFEFEFAFAFACDCDCDA2A2A2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE5E5E59D9D9EF3F3F3F3F3F3F8F8F8F8F8F8F8F8F8F9F9F9F1F1
        F1B4B4B4D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0B4B4B4F1F1F1F2
        F2F2F5F5F5F5F5F5F5F5F5F6F6F6F6F6F6D3D3D3999999FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC9C9C9BABABAEBEBEBF4F4F4F3F3F3F3F3F3F3F3F3F4F4F4F4F4
        F4D2D2D3969697FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDAAAAAAE9E9E8EA
        EAEAEAEAEAECECECEDEDEDEEEEEEECECECCCCCCD969596FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE6E6E6999999DCDCDCF6F6F6F0F0F0EFEFEFEFEFEFF0F1F0E0E0
        E0D2D1D2B2B2B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEB6B5B5979796EC
        ECECF1F1F1EEEEEEECECECDEDEDECDCDCD9C9C9CF7F7F7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFBFBB4B4B4969595B7B7B7C8C8C8C2C2C2B6B5B59898
        98E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4
        E4E4ACACAC9A9A999E9E9EBFBFBFF8F8F8FFFFFFFFFFFFFFFFFF}
      TabOrder = 0
      OnClick = btnPesquisarClick
    end
    object edFilial: TComboBox
      Left = 8
      Top = 29
      Width = 153
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'Farm'#225'cia Erechim'
      OnChange = edFilialClick
      OnClick = edFilialClick
      Items.Strings = (
        'Farm'#225'cia Erechim'
        'Farm'#225'cia Get'#250'lio')
    end
    object edDataInicial: TDateTimePicker
      Left = 167
      Top = 29
      Width = 89
      Height = 21
      Date = 44063.000000000000000000
      Time = 0.619505185182788400
      TabOrder = 2
    end
    object edDataFinal: TDateTimePicker
      Left = 262
      Top = 29
      Width = 89
      Height = 21
      Date = 44063.000000000000000000
      Time = 0.619505185182788400
      TabOrder = 3
    end
    object btnExportar: TBitBtn
      Left = 949
      Top = 33
      Width = 86
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAADAB9AB29E8A
        B392A0B6A4A2A3A58F8F91FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA9B5AB59AA61078814019012049E1906AE211ABE396FD386A2AAA9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3BEA6118A1D06851283B78845884D02
        981605A91F08B8270AC62D29D14DAAC3B3FFFFFFFFFFFFFFFFFFFFFFFFAFBBB0
        118A1D0685129AC49EF4F4F4F4F4F41C802904A11B06AE2108BC280AC62D2ACD
        4CA2A9A6FFFFFFFFFFFFFFFFFF5AAB6206851290BE94D2D3D2E0E0E0F4F4F49A
        B29E01901204A11B06AE2106AE2108BC2872CB84FFFFFFFFFFFFBABEBB2B9836
        A4D0A8EBEBEBCCD5CD3F9D48D7E0D8EDEEEE257D30049E1904A11B06AE2106AE
        211BB035A3A4A6FFFFFF9AB29E369E40D9ECDBD9ECDB2C953601830D6FB275E0
        E0E0B3C1B4027E11019012019012049E19049E19A1B7A5FFFFFF8AB392369E40
        3A9F442C953606851201830D0D8919BFCDC0E0E0E05F8C640788140788140788
        14008B1087AD8EFFFFFFA0B6A4359B3F359B3F359B3F319B3B178F2301830D41
        9D4AD2D3D2D6D8D624722B01830D008B1001830D91A995FFFFFFBEC1C03EA148
        359B3F369E40359B3F359B3F359B3F24952F9AC49ED2D3D2BEC1C00970130183
        0D068512B3B5B3FFFFFFFFFFFF8FC797359B3F369E40369E40369E40359B3F35
        9B3F3DA047BFD2C1D7E0D89AB29E359B3F71B478FFFFFFFFFFFFFFFFFFBFC2C1
        50AC5C359B3F369E40369E40369E40359B3F359B3F48A551C5D6C79AC49E3A9F
        44B0BBB1FFFFFFFFFFFFFFFFFFFFFFFFC5D6C750AC5C359B3F359B3F369E4036
        9E40359B3F359B3F359B3F42A34CADC5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFBFC2C18EC69641A44C369E40369E40369E403DA04778BA7FB0BBB1FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFC2C1A3BEA68A
        B392A0B6A4BABEBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 4
      OnClick = btnExportarClick
    end
  end
  object gridNotas: TDBGrid
    Left = 0
    Top = 65
    Width = 1043
    Height = 356
    Align = alClient
    DataSource = dsSel
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = gridNotasDblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SEL'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'S/N'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTVENCIMENTO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Venc.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTENTRADA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Dt.Ent.'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NRDUPLICATA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Nr.Dupl'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRCONTA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Vl.Dupl'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CGC_CPF'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'CNPJ'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Fornecedor'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OBS'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Obs'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CDLOJA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Loja'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CDFORNECEDOR'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.Fornec'
        Visible = False
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 421
    Width = 1043
    Height = 19
    Panels = <
      item
        Width = 700
      end
      item
        Text = 'Informa'#231#245'es'
        Width = 100
      end>
  end
  object dsSel: TDataSource
    DataSet = cdsDados
    Left = 809
    Top = 276
  end
  object sqlcon: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'Database=172.16.4.2:/work/interbase/banco/sismec.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=money'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Left = 810
    Top = 75
  end
  object qrSel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select first 1 '#39'S'#39' as Sel,'
      '       ctaspagar.DTVENCIMENTO,'
      '       ctaspagar.nrduplicata,'
      '       notas.dtentrada,'
      '       ctaspagar.CDLOJA,'
      '       ctaspagar.VLRCONTA,'
      '       ctaspagar.CDFORNECEDOR,'
      '       fornecedores.CGC_CPF,'
      '       fornecedores.DESCRICAO,'
      '       cast(ctaspagar.OBS as char(500)) as obs'
      'from ctaspagar'
      
        'left join fornecedores on fornecedores.cdfornecedor = ctaspagar.' +
        'cdfornecedor'
      
        'left join notas on ctaspagar.nrdocumento = cast(notas.nrnota as ' +
        'varchar(20))'
      'left join cfop on cfop.cdcfop = notas.cdnatureza'
      '')
    SQLConnection = sqlcon
    Left = 810
    Top = 125
    object qrSelSEL: TStringField
      FieldName = 'SEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrSelDTVENCIMENTO: TSQLTimeStampField
      FieldName = 'DTVENCIMENTO'
      Required = True
    end
    object qrSelNRDUPLICATA: TStringField
      FieldName = 'NRDUPLICATA'
    end
    object qrSelDTENTRADA: TSQLTimeStampField
      FieldName = 'DTENTRADA'
    end
    object qrSelCDLOJA: TIntegerField
      FieldName = 'CDLOJA'
    end
    object qrSelVLRCONTA: TFMTBCDField
      FieldName = 'VLRCONTA'
      Precision = 18
      Size = 2
    end
    object qrSelCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      Required = True
    end
    object qrSelCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Size = 15
    end
    object qrSelDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qrSelOBS: TStringField
      FieldName = 'OBS'
      FixedChar = True
      Size = 500
    end
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspDados'
    Left = 810
    Top = 225
    object cdsDadosSEL: TStringField
      FieldName = 'SEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDadosDTVENCIMENTO: TSQLTimeStampField
      FieldName = 'DTVENCIMENTO'
      Required = True
      DisplayFormat = 'dd/MM/yyyy'
    end
    object cdsDadosNRDUPLICATA: TStringField
      FieldName = 'NRDUPLICATA'
    end
    object cdsDadosDTENTRADA: TSQLTimeStampField
      FieldName = 'DTENTRADA'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object cdsDadosCDLOJA: TIntegerField
      FieldName = 'CDLOJA'
    end
    object cdsDadosVLRCONTA: TFMTBCDField
      FieldName = 'VLRCONTA'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object cdsDadosCDFORNECEDOR: TIntegerField
      FieldName = 'CDFORNECEDOR'
      Required = True
    end
    object cdsDadosCGC_CPF: TStringField
      FieldName = 'CGC_CPF'
      Size = 15
    end
    object cdsDadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cdsDadosOBS: TStringField
      FieldName = 'OBS'
      FixedChar = True
      Size = 500
    end
    object cdsDadosSomaTotal: TAggregateField
      FieldName = 'SomaTotal'
      Active = True
      DisplayName = ''
      Expression = 'SUM(VLRCONTA)'
    end
  end
  object dspDados: TDataSetProvider
    DataSet = qrSel
    Options = [poDisableInserts, poDisableDeletes, poUseQuoteChar]
    Left = 810
    Top = 175
  end
  object PopupMenu1: TPopupMenu
    Left = 705
    Top = 115
    object MarcarTodos1: TMenuItem
      Caption = 'Marcar Todos'
      OnClick = MarcarTodos1Click
    end
    object DesmarcarTodos1: TMenuItem
      Caption = 'Desmarcar Todos'
      OnClick = DesmarcarTodos1Click
    end
  end
end
