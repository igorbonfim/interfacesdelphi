object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Button1: TButton
    Left = 88
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 88
    Top = 104
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 215
    Top = 104
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 400
    Top = 8
    Width = 216
    Height = 425
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 48
    Width = 145
    Height = 23
    TabOrder = 4
    Text = 'ComboBox1'
    OnChange = ComboBox1Change
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
  end
end
