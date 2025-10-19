inherited frmContas: TfrmContas
  Caption = 'Cadastro de Contas'
  ClientHeight = 685
  ClientWidth = 1020
  TextHeight = 15
  inherited pctBasicCad: TPageControl
    Width = 1020
    Height = 685
    ActivePage = tbsDetalhes
    inherited tbsDetalhes: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 16
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
        FocusControl = edtCodigo
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 64
        Width = 51
        Height = 15
        Caption = 'Descri'#231#227'o'
        FocusControl = edtDescricao
      end
      inherited Panel2: TPanel
        inherited SpeedButton5: TSpeedButton
          Top = 3
          ExplicitTop = 3
        end
      end
      object edtCodigo: TDBEdit
        Left = 16
        Top = 32
        Width = 154
        Height = 23
        DataField = 'CODIGO'
        DataSource = ddsMain
        TabOrder = 1
      end
      object edtDescricao: TDBEdit
        Left = 16
        Top = 80
        Width = 500
        Height = 23
        DataField = 'DESCRICAO'
        DataSource = ddsMain
        TabOrder = 2
      end
    end
  end
  inherited dqrMain: TFDQuery
    Active = True
    IndexFieldNames = 'CODIGO'
    SQL.Strings = (
      'select * from TCT')
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
  end
  object dqrAux: TFDQuery
    Connection = dmConexao.fdcConexaoDB
    SQL.Strings = (
      'select count(*) as qtd from TCT where codigo = :codigo')
    Left = 855
    Top = 354
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
