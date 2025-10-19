inherited frmFormasDePagamentos: TfrmFormasDePagamentos
  Caption = 'Formar de Pagamentos'
  ClientWidth = 1016
  ExplicitWidth = 1028
  TextHeight = 15
  inherited pctBasicCad: TPageControl
    Width = 1016
    ActivePage = tbsDetalhes
    inherited tbsGrid: TTabSheet
      ExplicitWidth = 1008
      inherited Panel1: TPanel
        Left = 823
      end
      inherited DBGrid1: TDBGrid
        Width = 823
      end
    end
    inherited tbsDetalhes: TTabSheet
      ExplicitWidth = 1008
      object Label1: TLabel [0]
        Left = 8
        Top = 16
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
        FocusControl = edtCodigo
      end
      object Label2: TLabel [1]
        Left = 8
        Top = 64
        Width = 51
        Height = 15
        Caption = 'Descri'#231#227'o'
        FocusControl = edtDescricao
      end
      inherited Panel2: TPanel
        Left = 823
        ExplicitLeft = 827
        ExplicitHeight = 655
      end
      object edtCodigo: TDBEdit
        Left = 8
        Top = 32
        Width = 154
        Height = 23
        DataField = 'CODIGO'
        DataSource = ddsMain
        TabOrder = 1
      end
      object edtDescricao: TDBEdit
        Left = 8
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
      'select * from TFG')
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
end
