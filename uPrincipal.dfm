object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Blue Contas'
  ClientHeight = 427
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  WindowState = wsMaximized
  OnClose = FormClose
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 360
    Top = 192
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object esteBasico1: TMenuItem
        Caption = 'Tipos de Pagamentos'
        OnClick = esteBasico1Click
      end
      object FormasdePagamentos1: TMenuItem
        Caption = 'Formas de Pagamentos'
        OnClick = FormasdePagamentos1Click
      end
      object Contas1: TMenuItem
        Caption = 'Contas'
        OnClick = Contas1Click
      end
    end
    object Movimentao1: TMenuItem
      Caption = 'Movimenta'#231#227'o'
      object ContasaPagar1: TMenuItem
        Caption = 'Contas a Pagar'
        OnClick = ContasaPagar1Click
      end
      object ContasaReceber1: TMenuItem
        Caption = 'Contas a Receber'
        OnClick = ContasaReceber1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
    end
  end
end
