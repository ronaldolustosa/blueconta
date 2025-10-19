inherited frmTiposDePagamentos: TfrmTiposDePagamentos
  Caption = 'Tipos de Pagamentos'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 15
  inherited pctBasicCad: TPageControl
    ActivePage = tbsDetalhes
    inherited tbsGrid: TTabSheet
      inherited Panel1: TPanel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited DBGrid1: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Visible = True
          end>
      end
    end
    inherited tbsDetalhes: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 24
        Width = 39
        Height = 15
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel [1]
        Left = 16
        Top = 72
        Width = 51
        Height = 15
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      inherited Panel2: TPanel
        StyleElements = [seFont, seClient, seBorder]
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 40
        Width = 154
        Height = 23
        DataField = 'CODIGO'
        DataSource = ddsMain
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 88
        Width = 500
        Height = 23
        DataField = 'DESCRICAO'
        DataSource = ddsMain
        TabOrder = 2
      end
    end
  end
  inherited dqrMain: TFDQuery
    IndexFieldNames = 'CODIGO'
    ConstraintsEnabled = True
    SQL.Strings = (
      'select * from TPG')
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
