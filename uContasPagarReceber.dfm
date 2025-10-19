inherited frmContasPagarReceber: TfrmContasPagarReceber
  Caption = 'Contas a Pagar e Receber'
  TextHeight = 15
  inherited pctBasicCad: TPageControl
    inherited tbsDetalhes: TTabSheet
      object Label1: TLabel [0]
        Left = 24
        Top = 16
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 64
        Width = 51
        Height = 15
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 24
        Top = 112
        Width = 63
        Height = 15
        Caption = 'Data Comp.'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 192
        Top = 160
        Width = 50
        Height = 15
        Caption = 'Data Pag.'
        FocusControl = DBEdit4
      end
      object Label6: TLabel [4]
        Left = 360
        Top = 160
        Width = 26
        Height = 15
        Caption = 'Valor'
        FocusControl = DBEdit6
      end
      object Label7: TLabel [5]
        Left = 192
        Top = 112
        Width = 32
        Height = 15
        Caption = 'Conta'
      end
      object Label8: TLabel [6]
        Left = 360
        Top = 112
        Width = 87
        Height = 15
        Caption = 'Tipo Pagamento'
      end
      object Label9: TLabel [7]
        Left = 24
        Top = 160
        Width = 114
        Height = 15
        Caption = 'Forma de pagamento'
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 32
        Width = 154
        Height = 23
        DataField = 'CODIGO'
        DataSource = ddsMain
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 80
        Width = 490
        Height = 23
        DataField = 'DESCRICAO'
        DataSource = ddsMain
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 131
        Width = 154
        Height = 23
        DataField = 'DATACOMP'
        DataSource = ddsMain
        MaxLength = 11
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 192
        Top = 176
        Width = 154
        Height = 23
        DataField = 'DATAPAG'
        DataSource = ddsMain
        TabOrder = 7
      end
      object DBEdit6: TDBEdit
        Left = 360
        Top = 176
        Width = 154
        Height = 23
        DataField = 'VALOR'
        DataSource = ddsMain
        TabOrder = 8
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 192
        Top = 128
        Width = 154
        Height = 23
        DataField = 'TCT_CODIGO'
        DataSource = ddsMain
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = ddsContas
        TabOrder = 4
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 360
        Top = 128
        Width = 154
        Height = 23
        DataField = 'TPG_CODIGO'
        DataSource = ddsMain
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = ddsTipoPagamentos
        TabOrder = 5
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 25
        Top = 177
        Width = 154
        Height = 23
        DataField = 'TFG_CODIGO'
        DataSource = ddsMain
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = ddsFormaPagamento
        TabOrder = 6
      end
    end
  end
  inherited dqrMain: TFDQuery
    Active = True
    SQL.Strings = (
      'select * from CPR')
    object dqrMainCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dqrMainDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object dqrMainDATACOMP: TSQLTimeStampField
      DisplayLabel = 'Data Comp.'
      FieldName = 'DATACOMP'
      Origin = 'DATACOMP'
      EditMask = ' !00/00/0000;1;_'
    end
    object dqrMainDATAPAG: TSQLTimeStampField
      FieldName = 'DATAPAG'
      Origin = 'DATAPAG'
    end
    object dqrMainTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object dqrMainVALOR: TSingleField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
    end
    object dqrMainTCT_CODIGO: TIntegerField
      FieldName = 'TCT_CODIGO'
      Origin = 'TCT_CODIGO'
      Visible = False
    end
    object dqrMainTPG_CODIGO: TIntegerField
      FieldName = 'TPG_CODIGO'
      Origin = 'TPG_CODIGO'
      Visible = False
    end
    object dqrMainTFG_CODIGO: TIntegerField
      FieldName = 'TFG_CODIGO'
      Origin = 'TFG_CODIGO'
      Visible = False
    end
  end
  object dqrContas: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmConexao.fdcConexaoDB
    SQL.Strings = (
      'select * from TCT')
    Left = 855
    Top = 322
    object dqrContasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dqrContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object ddsContas: TDataSource
    DataSet = dqrContas
    Left = 943
    Top = 330
  end
  object dqrTipoPagamentos: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmConexao.fdcConexaoDB
    SQL.Strings = (
      'select * from TPG')
    Left = 855
    Top = 386
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object ddsTipoPagamentos: TDataSource
    DataSet = dqrTipoPagamentos
    Left = 943
    Top = 394
  end
  object dqrFormaPagamento: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = dmConexao.fdcConexaoDB
    SQL.Strings = (
      'select * from TFG')
    Left = 863
    Top = 458
    object IntegerField2: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object ddsFormaPagamento: TDataSource
    DataSet = dqrFormaPagamento
    Left = 951
    Top = 466
  end
end
