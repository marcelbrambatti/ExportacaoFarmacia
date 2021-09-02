inherited frmConfiguraConexao: TfrmConfiguraConexao
  Caption = 'Configura'#231#227'o de Conex'#227'o com o Banco de Dados'
  ClientHeight = 190
  ExplicitWidth = 434
  ExplicitHeight = 218
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnPrincipal: TPanel
    Height = 157
    ExplicitHeight = 157
    object Label1: TLabel
      Left = 47
      Top = 16
      Width = 29
      Height = 13
      Caption = 'Host:'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 43
      Width = 70
      Height = 13
      Caption = 'Nome do BD:'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 30
      Top = 70
      Width = 46
      Height = 13
      Caption = 'Usu'#225'rio:'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 38
      Top = 97
      Width = 38
      Height = 13
      Caption = 'Senha:'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 42
      Top = 124
      Width = 34
      Height = 13
      Caption = 'Porta:'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 82
      Top = 13
      Width = 250
      Height = 21
      DataField = 'Hostname'
      DataSource = dsConfBD
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 82
      Top = 40
      Width = 250
      Height = 21
      DataField = 'Database'
      DataSource = dsConfBD
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 82
      Top = 67
      Width = 150
      Height = 21
      DataField = 'User'
      DataSource = dsConfBD
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 82
      Top = 94
      Width = 150
      Height = 21
      DataField = 'Password'
      DataSource = dsConfBD
      PasswordChar = '*'
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 82
      Top = 121
      Width = 150
      Height = 21
      DataField = 'Porta'
      DataSource = dsConfBD
      TabOrder = 4
    end
  end
  inherited pnBotoes: TPanel
    Top = 157
    ExplicitTop = 157
    inherited btnCancelar: TBitBtn
      OnClick = btCancelarClick
    end
    inherited btnOk: TBitBtn
      OnClick = btOkClick
    end
  end
  object dsConfBD: TDataSource
    DataSet = dmSistema.cdsConfiguracaoConexao
    Left = 352
    Top = 16
  end
end
