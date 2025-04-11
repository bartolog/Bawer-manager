object frmGrid: TfrmGrid
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitLeft = -3
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 41
    Width = 640
    Height = 420
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 192
    ExplicitTop = -80
    ExplicitWidth = 250
    ExplicitHeight = 200
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 461
    Width = 640
    Height = 19
    Panels = <>
    ExplicitLeft = 1
    ExplicitTop = 21
    ExplicitWidth = 638
  end
end
