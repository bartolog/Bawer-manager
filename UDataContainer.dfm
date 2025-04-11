object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=DbBawer.db'
      'DriverID=SQLite')
    Left = 440
    Top = 120
  end
  object AureliusConnection1: TAureliusConnection
    AdapterName = 'FireDac'
    AdaptedConnection = FDConnection1
    SQLDialect = 'SQLite'
    Left = 280
    Top = 120
  end
  object AureliusManager1: TAureliusManager
    Connection = AureliusConnection1
    Left = 144
    Top = 120
  end
end
