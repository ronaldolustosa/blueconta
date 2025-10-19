object dmConexao: TdmConexao
  Height = 480
  Width = 640
  object fdcConexaoDB: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\ronal\OneDrive\'#193'rea de Trabalho\DELPHI\Fontes\' +
        'db\PR.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 88
    Top = 48
  end
end
