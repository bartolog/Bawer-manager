object MDBawer: TMDBawer
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\barto\Documents\Embarcadero\Studio\Projects\De' +
        'sktop projects\Bawer manager\Win32\Debug\DbBawer.db'
      'DriverID=SQLite')
    Left = 400
    Top = 80
  end
  object AureliusConnection1: TAureliusConnection
    AdapterName = 'FireDac'
    AdaptedConnection = FDConnection1
    SQLDialect = 'SQLite'
    Left = 248
    Top = 80
  end
  object AureliusManager1: TAureliusManager
    Connection = AureliusConnection1
    Left = 112
    Top = 80
  end
  object tblRapportini: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Rapportini'
    Left = 104
    Top = 208
    object tblRapportiniID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object tblRapportiniDAY: TFloatField
      FieldName = 'DAY'
      Origin = 'DAY'
      Required = True
    end
    object tblRapportiniOPERAIO_ID: TIntegerField
      FieldName = 'OPERAIO_ID'
      Origin = 'OPERAIO_ID'
      Visible = False
    end
    object tblRapportiniOperaio: TStringField
      FieldKind = fkLookup
      FieldName = 'Operaio'
      LookupDataSet = tblOperai
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'OPERAIO_ID'
      Size = 45
      Lookup = True
    end
  end
  object tblLavorazioni: TFDTable
    IndexFieldNames = 'LAVORAZIONI_RAPPORTINO_ID'
    MasterSource = srcRapportini
    MasterFields = 'ID'
    DetailFields = 'LAVORAZIONI_RAPPORTINO_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Lavorazioni'
    Left = 104
    Top = 288
    object tblLavorazioniID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object tblLavorazioniCODICE: TWideMemoField
      FieldName = 'CODICE'
      Origin = 'CODICE'
      Required = True
      BlobType = ftWideMemo
    end
    object tblLavorazioniDESCRIZIONE: TWideMemoField
      FieldName = 'DESCRIZIONE'
      Origin = 'DESCRIZIONE'
      Required = True
      BlobType = ftWideMemo
    end
    object tblLavorazioniBEGIN_AT: TFloatField
      FieldName = 'BEGIN_AT'
      Origin = 'BEGIN_AT'
      Required = True
    end
    object tblLavorazioniFINISHED_AT: TFloatField
      FieldName = 'FINISHED_AT'
      Origin = 'FINISHED_AT'
      Required = True
    end
    object tblLavorazioniQTA: TIntegerField
      FieldName = 'QTA'
      Origin = 'QTA'
      Required = True
    end
    object tblLavorazioniTIPO_LAVORO: TWideStringField
      FieldName = 'TIPO_LAVORO'
      Origin = 'TIPO_LAVORO'
      Required = True
      Size = 15
    end
    object tblLavorazioniLAVORAZIONI_RAPPORTINO_ID: TIntegerField
      FieldName = 'LAVORAZIONI_RAPPORTINO_ID'
      Origin = 'LAVORAZIONI_RAPPORTINO_ID'
    end
  end
  object tblComplementi: TFDTable
    IndexFieldNames = 'ACCESSORI_LAVORAZIONE_ID'
    MasterSource = srcLavorazioni
    MasterFields = 'ID'
    DetailFields = 'ACCESSORI_LAVORAZIONE_ID'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evItems, evCache]
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Complementi'
    Left = 104
    Top = 360
    object tblComplementiID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
      Visible = False
    end
    object tblComplementiACCESSORIO_ID: TIntegerField
      FieldName = 'ACCESSORIO_ID'
      Origin = 'ACCESSORIO_ID'
      Visible = False
    end
    object tblComplementiNome_Accessorio: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Accessorio'
      LookupDataSet = tblAccessori
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRIZIONE'
      KeyFields = 'ACCESSORIO_ID'
      Size = 30
      Lookup = True
    end
    object tblComplementiQTA: TIntegerField
      FieldName = 'QTA'
      Origin = 'QTA'
      Required = True
    end
    object tblComplementiACCESSORI_LAVORAZIONE_ID: TIntegerField
      FieldName = 'ACCESSORI_LAVORAZIONE_ID'
      Origin = 'ACCESSORI_LAVORAZIONE_ID'
      Visible = False
    end
  end
  object tblAccessori: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Accessori'
    Left = 448
    Top = 216
  end
  object tblOperai: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'Operai'
    Left = 448
    Top = 288
  end
  object srcAccessori: TDataSource
    DataSet = tblAccessori
    Left = 536
    Top = 216
  end
  object srcComplementi: TDataSource
    DataSet = tblComplementi
    Left = 216
    Top = 360
  end
  object srcLavorazioni: TDataSource
    DataSet = tblLavorazioni
    Left = 208
    Top = 288
  end
  object srcOperai: TDataSource
    DataSet = tblOperai
    Left = 536
    Top = 288
  end
  object srcRapportini: TDataSource
    DataSet = tblRapportini
    Left = 208
    Top = 208
  end
end
