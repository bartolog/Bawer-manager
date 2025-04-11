object DataContainer: TDataContainer
  Height = 374
  Width = 547
  object UniConnection1: TUniConnection
    ProviderName = 'mySQL'
    Port = 3306
    Database = 'bawer'
    Username = 'bartolo'
    Server = 'server2018'
    Connected = True
    LoginPrompt = False
    Left = 160
    Top = 40
    EncryptedPassword = '9DFF9EFF8DFF8BFF90FF93FF90FF'
  end
  object tblOperai: TUniTable
    TableName = 'operai'
    Left = 32
    Top = 40
  end
  object tblRapportini: TUniTable
    TableName = 'rapportini'
    Left = 256
    Top = 40
  end
  object tblRapportiniRows: TUniTable
    TableName = 'rapportini_rows'
    MasterFields = 'id'
    DetailFields = 'id_rapportino'
    Left = 408
    Top = 48
  end
  object srcRapportini: TUniDataSource
    Left = 336
    Top = 48
  end
  object srcRapportiniRows: TUniDataSource
    Left = 472
    Top = 40
  end
  object srcOperai: TUniDataSource
    Left = 96
    Top = 40
  end
end
