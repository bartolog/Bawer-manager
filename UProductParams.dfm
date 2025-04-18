object frmProductParams: TfrmProductParams
  Left = 0
  Top = 0
  Width = 946
  Height = 480
  TabOrder = 0
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 946
    Height = 480
    ActivePage = tabScheda
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object tabScheda: TTabSheet
      Caption = 'Scheda'
      object dxLayoutControl1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 938
        Height = 450
        Align = alClient
        TabOrder = 0
        OptionsImage.Images = cxImageList1
        object edtCodice: TcxDBTextEdit
          Left = 105
          Top = 33
          DataBinding.DataField = 'Codice'
          DataBinding.DataSource = srcParametri
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 0
          Width = 121
        end
        object edtNote: TcxDBTextEdit
          Left = 270
          Top = 33
          DataBinding.DataField = 'Note'
          DataBinding.DataSource = srcParametri
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 1
          Width = 121
        end
        object cmbTipoLavoro: TcxDBComboBox
          Left = 463
          Top = 33
          DataBinding.DataField = 'TipoLavoro'
          DataBinding.DataSource = srcParametri
          Properties.Items.Strings = (
            'Lucidatura'
            'Assemblaggio')
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Width = 180
        end
        object cmbCategoria: TcxDBComboBox
          Left = 105
          Top = 98
          AutoSize = False
          DataBinding.DataField = 'Categoria'
          DataBinding.DataSource = srcParametri
          Properties.OnChange = cmbCategoriaPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 3
          Height = 23
          Width = 150
        end
        object edtLx: TcxDBTextEdit
          Left = 262
          Top = 98
          AutoSize = False
          DataBinding.DataField = 'X'
          DataBinding.DataSource = srcParametri
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 4
          Height = 23
          Width = 51
        end
        object edtLz: TcxDBTextEdit
          Left = 404
          Top = 98
          AutoSize = False
          DataBinding.DataField = 'Z'
          DataBinding.DataSource = srcParametri
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 6
          Height = 23
          Width = 51
        end
        object edtLy: TcxDBTextEdit
          Left = 333
          Top = 98
          DataBinding.DataField = 'Y'
          DataBinding.DataSource = srcParametri
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 5
          Width = 51
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 270
          Top = 163
          AutoSize = False
          DataBinding.DataField = 'Costo'
          DataBinding.DataSource = srcParametri
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 8
          Height = 25
          Width = 121
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 105
          Top = 163
          AutoSize = False
          DataBinding.DataField = 'TempoLavoro'
          DataBinding.DataSource = srcParametri
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          TabOrder = 7
          Height = 25
          Width = 121
        end
        object cxDBNavigator1: TcxDBNavigator
          Left = 398
          Top = 163
          Width = 270
          Height = 25
          Buttons.CustomButtons = <>
          DataSource = srcParametri
          TabOrder = 9
        end
        object dxLayoutControl1Group_Root: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          Hidden = True
          ItemIndex = 2
          ShowBorder = False
          Index = -1
        end
        object dxLayoutGroup1: TdxLayoutGroup
          Parent = dxLayoutControl1Group_Root
          CaptionOptions.Text = 'Tipologia di cassetta'
          ItemIndex = 2
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object dxLayoutGroup3: TdxLayoutGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahLeft
          CaptionOptions.ImageIndex = 0
          CaptionOptions.Text = 'Dimensioni'
          ItemIndex = 3
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutGroup2: TdxLayoutGroup
          Parent = dxLayoutControl1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Valori'
          ItemIndex = 2
          LayoutDirection = ldHorizontal
          Index = 2
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Codice'
          Control = edtCodice
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Note'
          Control = edtNote
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Tipo lavoro'
          Control = cmbTipoLavoro
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 180
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutGroup3
          AlignVert = avClient
          CaptionOptions.Text = 'Categoria'
          Control = cmbCategoria
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutGroup3
          AlignVert = avClient
          Control = edtLx
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 51
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutGroup3
          AlignVert = avClient
          CaptionOptions.Text = 'X'
          Control = edtLz
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 51
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutGroup3
          AlignVert = avBottom
          CaptionOptions.Text = 'X'
          Control = edtLy
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 51
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutGroup2
          AlignVert = avClient
          CaptionOptions.Text = 'Costo'
          Control = cxDBCurrencyEdit1
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutGroup2
          AlignVert = avClient
          CaptionOptions.Text = 'Tempo lavoro'
          Control = cxDBSpinEdit1
          ControlOptions.OriginalHeight = 23
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutGroup2
          AlignVert = avClient
          Control = cxDBNavigator1
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 270
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
    object tabGrid: TTabSheet
      Caption = 'Lista'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 938
        Height = 450
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = srcParametri
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1Self: TcxGridDBColumn
            DataBinding.FieldName = 'Self'
            Width = 68
          end
          object cxGrid1DBTableView1Id: TcxGridDBColumn
            DataBinding.FieldName = 'Id'
          end
          object cxGrid1DBTableView1Codice: TcxGridDBColumn
            DataBinding.FieldName = 'Codice'
            Width = 93
          end
          object cxGrid1DBTableView1Note: TcxGridDBColumn
            DataBinding.FieldName = 'Note'
            Width = 107
          end
          object cxGrid1DBTableView1Categoria: TcxGridDBColumn
            DataBinding.FieldName = 'Categoria'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.OnChange = cxGrid1DBTableView1CategoriaPropertiesEditValueChanged
            Width = 60
          end
          object cxGrid1DBTableView1X: TcxGridDBColumn
            DataBinding.FieldName = 'X'
          end
          object cxGrid1DBTableView1Y: TcxGridDBColumn
            DataBinding.FieldName = 'Y'
          end
          object cxGrid1DBTableView1Z: TcxGridDBColumn
            DataBinding.FieldName = 'Z'
          end
          object cxGrid1DBTableView1TempoLavoro: TcxGridDBColumn
            DataBinding.FieldName = 'TempoLavoro'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.Increment = 0.100000000000000000
            Properties.LargeIncrement = 1.000000000000000000
            Width = 83
          end
          object cxGrid1DBTableView1Costo: TcxGridDBColumn
            DataBinding.FieldName = 'Costo'
            PropertiesClassName = 'TcxCurrencyEditProperties'
          end
          object cxGrid1DBTableView1TipoLavoro: TcxGridDBColumn
            DataBinding.FieldName = 'TipoLavoro'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.Items.Strings = (
              'Lucidatura'
              'Assemblaggio')
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 608
    Top = 320
    Bitmap = {
      494C010101000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000129EE3F1717171FF14B1FFFF7171
      71FF14B1FFFF717171FF14B1FFFF717171FF14B1FFFF717171FF14B1FFFF7171
      71FF14B1FFFF717171FF129FE5F2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF717171FF14B1FFFF7171
      71FF14B1FFFF717171FF14B1FFFF717171FF14B1FFFF717171FF14B1FFFF7171
      71FF14B1FFFF717171FF14B1FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF717171FF14B1FFFF14B1
      FFFF14B1FFFF717171FF14B1FFFF14B1FFFF14B1FFFF717171FF14B1FFFF14B1
      FFFF14B1FFFF717171FF14B1FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000129ADEEE14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF129EE3F1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 20972128
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2252
          756C6572486F72697A6F6E74616C2220786D6C6E733D22687474703A2F2F7777
          772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22
          687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D
          223070782220793D22307078222076696577426F783D22302030203332203332
          22207374796C653D22656E61626C652D6261636B67726F756E643A6E65772030
          20302033322033323B2220786D6C3A73706163653D227072657365727665223E
          262331333B262331303B3C7374796C6520747970653D22746578742F63737322
          20786D6C3A73706163653D227072657365727665223E2E426C61636B7B66696C
          6C3A233732373237323B7D262331333B262331303B2623393B2E59656C6C6F77
          7B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C706174682063
          6C6173733D2259656C6C6F772220643D224D32392C32324831632D302E362C30
          2D312D302E352D312D31563963302D302E362C302E342D312C312D3168323863
          302E352C302C312C302E342C312C317631324333302C32312E352C32392E352C
          32322C32392C32327A222F3E0D0A3C7061746820636C6173733D22426C61636B
          2220643D224D342C32324832762D3668325632327A204D382C31384836763468
          325631387A204D31322C3136682D32763668325631367A204D31362C3138682D
          32763468325631387A204D32302C3136682D32763668325631367A204D32342C
          3138682D32763468325631387A20202623393B204D32382C3136682D32763668
          325631367A222F3E0D0A3C2F7376673E0D0A}
        FileName = 'SVG Images\RichEdit\RulerHorizontal.svg'
        Keywords = 'RichEdit;RulerHorizontal'
      end>
  end
  object dsParametri: TAureliusDataset
    FieldDefs = <
      item
        Name = 'Self'
        Attributes = [faReadonly]
        DataType = ftVariant
      end
      item
        Name = 'Id'
        Attributes = [faReadonly, faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Codice'
        Attributes = [faRequired]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Note'
        Attributes = [faRequired]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Categoria'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'X'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Y'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'Z'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TempoLavoro'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'TipoLavoro'
        Attributes = [faRequired]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Costo'
        Attributes = [faRequired]
        DataType = ftCurrency
      end>
    Left = 232
    Top = 320
    DesignClass = 'UEntities.TProductParams'
    object dsParametriSelf: TAureliusEntityField
      FieldName = 'Self'
      ReadOnly = True
    end
    object dsParametriId: TIntegerField
      FieldName = 'Id'
      ReadOnly = True
      Required = True
    end
    object dsParametriCodice: TStringField
      FieldName = 'Codice'
      Required = True
      Size = 255
    end
    object dsParametriNote: TStringField
      FieldName = 'Note'
      Required = True
      Size = 255
    end
    object dsParametriCategoria: TSmallintField
      FieldName = 'Categoria'
      Required = True
    end
    object dsParametriX: TIntegerField
      FieldName = 'X'
      Required = True
    end
    object dsParametriY: TIntegerField
      FieldName = 'Y'
      Required = True
    end
    object dsParametriZ: TIntegerField
      FieldName = 'Z'
      Required = True
    end
    object dsParametriTempoLavoro: TFloatField
      FieldName = 'TempoLavoro'
      Required = True
    end
    object dsParametriCosto: TCurrencyField
      FieldName = 'Costo'
      Required = True
    end
    object dsParametriTipoLavoro: TStringField
      FieldName = 'TipoLavoro'
      Required = True
      Size = 255
    end
  end
  object srcParametri: TDataSource
    DataSet = dsParametri
    Left = 344
    Top = 304
  end
end
