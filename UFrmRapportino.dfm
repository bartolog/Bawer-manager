object frmRapportino: TfrmRapportino
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  TabOrder = 0
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 640
    Height = 81
    Align = alTop
    TabOrder = 0
    object cxDateEdit1: TcxDateEdit
      Left = 69
      Top = 12
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 254
      Top = 12
      DataBinding.DataField = 'Id_operaio'
      DataBinding.DataSource = DataModule1.srcRapportini
      Properties.ListColumns = <
        item
          FieldName = 'Cognome'
        end
        item
          FieldName = 'Nome'
        end>
      Properties.ListSource = DataModule1.srcOperai
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Width = 307
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      Control = cxDateEdit1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Item'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 307
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 81
    Width = 640
    Height = 399
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 3
    ExplicitTop = 87
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
end
