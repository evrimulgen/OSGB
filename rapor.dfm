object frmRapor: TfrmRapor
  Left = 541
  Top = 137
  BorderStyle = bsToolWindow
  Caption = '-'
  ClientHeight = 71
  ClientWidth = 308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 52
    Width = 308
    Height = 19
    Panels = <>
  end
  object memo: TDBMemo
    Left = 128
    Top = 48
    Width = 185
    Height = 89
    DataField = 'rapor'
    DataSource = DataSource1
    TabOrder = 1
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 308
    Height = 52
    Align = alClient
    BevelInner = bvLowered
    Caption = 'Panel1'
    TabOrder = 2
    object btnOnIzle: TcxButton
      Left = 205
      Top = 3
      Width = 101
      Height = 46
      Caption = ' '#214'n '#304'zleme'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000111B0F
        149378384BF0111A225000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000276538
        46DA983C50FF8E3A4EFB141B2357000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000020202
        0239693C49DA983C50FF903B4EFD1B1B235F0000000000000000000000020303
        0304010101010000000001010020080502540000001700000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002040304436A3C49DB983C50FF8C3A4DF9171519580100001C312526676356
        57856559577D916E54B970563BCDBE956CFF9D7851F5634A30CE2F2213960E0A
        045E010100290000000600000000000000000000000000000000000000000000
        0000000000020202023C714250E098485BFF7A6264DFC09188EFFCEDDEFFFEF6
        EDFFFEFBF7FFEAD5D3FFDABEAEFFD4B89CFFD0B193FFCDAC8CFFCAA886FFC6A1
        7DFFBB936AFE896945EA503B23C01A13097D0201001400000000000000000000
        0000000000142819127D18110C7336292AA9E3BBADFEFCE5CFFFFDEDDDFFFEF8
        F1FFFFFEFDFFFFFFFDFFF4E3E1FFEFDFDBFFF1E8DFFFEDE0D4FFE7D8C9FFE2CF
        BDFFDEC7B2FFD9C0A8FFD6BBA0FFCCAC8CFC2F200B4E00000000000000000000
        00062B1B1387B87245FFC5804BFFA86C58FEFCE0C5FFFBDDC1FFFEF0E3FFFEF9
        F3FFFFFCFAFFFFFDFBFFFEF9F3FFE5BFBFFFFFFFFFFFFFFFFFFFFEFEFEFFFDFC
        FBFFFBF9F7FFF9F5F1FFF6F0EAFFAF9074D60000000000000000000000000000
        001E9F643EEBCA8C5BFFD4AA7AFFC89682FFFCDBBEFFFCDEC2FFFEF6EEFFFFFD
        FBFFFFFBF6FFFEF7EEFFFEF1E4FFE3B6B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAF8F5FFDCAE8EFFC99579E10000000000000000000000062819
        1283D38A4DFFD2AC92FFDBDAD9FFC79D94FFFBDDC0FFFCDBBEFFFDF2E8FFFFFB
        F7FFFEF8F1FFFEF0E3FFFDEBD9FFDEADA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF9F7F4FFE7B699FFFEC4ACFF5944358300000000000000000100001BA165
        3FEAE9AA6EFFD4C0B9FFF0ECE7FFB69290FFFDECDBFFFCE3CCFFFDE6D2FFFDEC
        DBFFFEEFE0FFFDECDCFFFCE9D7FFDEA496FFFDECDEFFFEF2E9FFFEF7F2FFF8F3
        EEFFDAB59BFFECB998FFBF7F51EC0000000D00000000000000000705043BDE96
        5BFFF2D1AFFFD7C2B8FFFCF2E6FFC8BFB8FFDEBEBDFFFFFCF7FFFDEDDEFFFAD6
        B6FFFBDABBFFFDE8D3FFC58F83FFB0784BFFCB8D58FFDC9D69FFE8AC7BFFCEA5
        80FFE8CFBDFFFBE3C7FFE7A674FF0503022C00000000000000000705043AEFAD
        6CFFF2E8E0FFDAC4B7FFFFEFDCFFF5E6D6FFB88E81FFD5A09DFFFCEFE3FFFDE7
        D1FFFBE3CDFFD89383FFA06A52FF795A4DFF694F48FF6B4B3BFF6D462DFFC27F
        5BFFFFFDFCFFFEFAF8FFE8C3A8FF08050334000000000000000005030337F9CC
        9DFFECE6E2FFE2C7B3FFFFE9CEFFFFEAD1FFE09A7EFFCA5E38FFCF5E43FFDA76
        5AFFD85F40FFEF7F50FFF49160FFF69B69FFE29162FFC6825AFFAE6C48FFD173
        4AFFFEFAF6FFFEF7F2FFE9C3A6FF09060438000000000000000005030336FBF2
        E8FFDFD0CAFFF8D6B1FFFFDFBAFFFFE1BDFFE68969FFEF6C3DFFFA7A48FFFC81
        50FFFC8354FFFC7F4DFFFC7946FFFC7945FFFC7A47FFFA7C49FFF27645FFE47B
        57FFFFF4E7FFFDF1E4FFE9BD9BFF0503022B000000000000000004030233F9F6
        F5FFE2C5ACFFFFD5A4FFFFD7A7FFF6CAA4FFD85F35FFEB784BFFF38D63FFF69A
        74FFF69F7BFFF69973FFF4875AFFF27744FFF27542FFEE7240FFE26638FFE69C
        7EFFFFECD6FFFCE5CEFFC59672ED0000000A00000000000000000302012CF2E9
        E7FFF5C590FFFFCD92FFFFCF96FFD08665FFC96943FFD9835EFFE19674FFE4A0
        81FFE5A283FFE6A080FFE2906BFFDC794BFFD76C3BFFD16537FFC2582FFFF4CF
        B1FFFFE4C4FFF7D4B1FF36261B7F000000020000000000000000000000085342
        389AFBD1A0FEFFD19CFFE8AE81FFD58767FFD38A69FFCD8867FFC78867FFC68A
        6AFFCC9372FFCC9375FFC48666FFBC734EFFB05D32FFA65028FFD49D7BFFFFD9
        ACFFFED9AFFF7B5F46B700000007000000000000000000000000000000000000
        00040704032B231B14647B513AC9C9886CFFD89478FFE59F83FFEBA488FFEAA3
        86FFE09A7DFFD59171FFCB8A67FFBD7D59FFAA6742FFC6926CFFFFD19AFFFFD2
        9EFF806348B70101001000000000000000000000000000000000000000000000
        00000000000000000000010101094D34239BCA8664FFC88A69FF8F6147CC724E
        3BB4C28062FDD18C6EFFD79072FDE09274FFC38360F3F8CD9CFEE7B987F43F2E
        2080000000050000000000000000000000000000000000000000000000000000
        0000000000000000000000000000543427B6F7AD90FFF1A588FF281C1342150E
        096CD98E6FFFD28C6CFF1B130C370403020F000000050100000F0000000A0000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000001198684FEAE5A98CFFD49576F5060503207D51
        3CD6F8AF91FFB2795BCC00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000992684EE6B98A6EFFBE8C6FFFA17355F2C58B
        6EFFCE8F71FF65452F7F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000017100B22563E2D7472523997886143B79468
        49C8694A328D0806040A00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnOnIzleClick
    end
    object btnYazdir: TcxButton
      Left = 104
      Top = 3
      Width = 101
      Height = 46
      Caption = 'Yazd'#305'r'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000006050409413530674A3D
        37761A151429010101020706050B3C312D5E695851A0130F0E1D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000030202043229254E63554E98A8978DF5B2AA9FFF877C
        6CFF938376FF8B786DE499877BF29E9486FFC9C0B1FFBEACA0F7554741800B09
        0811000000000000000000000000000000000000000000000000000000000101
        00012D2521466C5B55A6A7978EEFBFB6ACFFC8C1B7FFCFCAC1FFD7D3CDFFBEB9
        B2FFAFAAA0FF948E84FF9D9588FFABA294FFD6CCBFFFE2D9CCFFE2D8CBFFBCAC
        A0EE4A3D38710303020500000000000000000000000000000000000000003A2F
        2B5BC0B5ABFFCCC7BDFFD5D0C9FFDCD9D4FFE1DFDDFFDFDFDDFFBDBCBBFF9796
        94FF87847FFF8F8A82FFAEA699FFB6ADA0FFDED6CAFFEAE2D7FFEAE2D7FFEAE2
        D7FFE7DFD3FFB0A096E04539356A03020204000000000000000000000000725C
        55B4D9D5D1FFE4E3E1FFDFDEDEFFBCBBBAFF979593FF84807BFF98928AFFB8B1
        A5FFBDB6AAFFBDB6AAFFBDB6AAFFBEB7ABFFE3DDD3FFEEE8DEFFEEE8DEFFEEE8
        DEFFEEE8DEFFEEE8DEFFEAE2D9FF7F6C65B60000000000000000000000000605
        0409B2A398FAB0ABA2FF86827DFFA9A49AFFC2BBB0FFC4BDB2FFC4BDB1FFC4BD
        B1FFC4BDB2FFBFB8ADFFB0A69DFFABA098FFBCB1ABFFDBD3CCFFF1ECE4FFF1EB
        E3FFF1EBE3FFF1EBE3FFF1EBE3FFA4938CD90000000000000000000000000000
        0000A69E90F455BA52FF98B08DFFC6C0B7FFC6C0B7FFC6C0B7FFBAB1AAFFB2A8
        A1FFB1A7A1FFB9AFA8FFC6BFB7FFC6C0B7FFE8E3DBFFE2DCD5FFCAC1BBFFDED8
        D2FFF2EDE6FFF2EDE6FFF2EDE6FFAE9E96E30000000000000000000000000000
        0000989382E547D84AFF78A970FFBCB4ADFFB3A8A2FFAEA39EFFBCB4ADFFC6C1
        B9FFC7C1B9FFD1CAC2FFDBD4CBFFEBE4DAFFF2ECE4FFF1ECE5FFF1ECE6FFD7D0
        CAFFCAC1BCFFE9E4DEFFF1ECE5FFB7A79EEC0000000000000000000000000000
        000098877FDDADA19DFFADA19CFFBCB5AEFFC6C0B8FFCAC4BBFFD6D0C7FFE8E1
        D8FFF3ECE2FFF3ECE2FFF3ECE2FFF3ECE2FFF2EBE1FFECE8E0FFECE8E0FFECE8
        E0FFECE8E0FFCCC2BCFFC9BFB9FFB9A9A1F10000000000000000000000000000
        000094857DD9C4C0B9FFCFCAC2FFDDD7CEFFEAE3DAFFF4ECE2FFF3ECE2FFF3EC
        E2FFF1EAE0FFDDD4CCFFD0C6BFFFCDC2BCFFDFD8D0FFEAE5DEFFE6E1D9FFE6E1
        D9FFE6E1D9FFE6E1D9FFE2DCD5FFB09E97F30000000000000000000000000000
        000082736CB5F1EAE1FFF3ECE2FFF3ECE2FFF3EDE3FFEAE2D8FFD3C8C1FFD0C7
        C0FFC7BDB8FFE0D9D3FFF8F4EEFFF9F5EFFFCDC5C1FFF7F4EFFFE1DBD3FFDFD9
        D1FFDFD9D1FFDFD9D1FFDFD9D1FFB7A69EF20000000000000000000000000000
        0000342B2752E7DED4FFF4EDE3FFD8CEC7FFB0A29DFFCDC3BEFFF4F0E9FFF8F5
        EFFFF9F6F1FFFAF7F3FFFAF7F4FFFBF9F5FFD3CCC9FFEDE9E6FFF3F0EAFFDBD6
        CCFFDAD5CBFFDAD5CBFFD9D3C9FF61514A940000000000000000000000000000
        0000040303069D8C85D0F6F2EBFFC7BDB9FFF7F4EFFFF9F6F1FFF9F7F3FFFAF7
        F4FFF5F2EEFFE6E2DCFFD5D1CAFFBEB8AFFF897F71FF8F8378FFCEC8C0FFF1ED
        E6FFE0D8D0FFBEB0A6F260524C8F0605050A0000000000000000000000000000
        00000000000028201E3EE1D9D4FCEEEBE7FFCCC3C0FFECE9E4FFD4D0C9FFBFBA
        B0FFB6B0A6FFBAB4AAFFBEB8AEFFC4BEB5FFABA59BFF8F877BFF8E877AFF9380
        79D9332926510303020500000000000000000000000000000000000000000000
        00000000000000000000392F2B58CFC3BDF6E8E3DDFFBDB7ADFFC3BEB4FFCBC7
        C1FFD0CDC9FFCBC5C0FFC2B5B1FFBCADA3FFB4A090FFC7C0BDFFB4ACA6FF473B
        366F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000161211236154508AACA9A7D1C0B7B2FCBDAC
        9DFFB8A38FFFBAA58EFFBEAB91FFBFAC92FFBEAB92FF62514A9927201D3D0303
        0205000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000001010102000000008A7A6FBCD8CB
        B7FFD8CBB7FFD8CBB7FFD8CBB7FFD8CBB7FFD9CCB8FF56474182000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B2A196DFEEE5
        D8FFEEE5D8FFEEE5D8FFEEE5D8FFEEE5D8FFEEE5D8FF99887FCE000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B3A49ADEF5ED
        E3FFF5EDE3FFF5EDE3FFF5EDE3FFF5EDE3FFF5EDE3FFE3D7CDFD1B16142B0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000085756EB0F4E9
        DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4E9DFFFF4E9DFFF9C8981CE0A08
        070F000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002D252246DCCB
        C0FFECDDD3FFECDDD3FFECDDD3FFECDDD3FFECDDD3FFECDDD3FFECDDD3FFB09D
        93DF51433E7C120F0D1C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003D32
        2E5CB8A399E9DDCABEFFE2D0C4FFDAC5BAFFCFBBAFFDB19E93E3907D75BF6D5D
        56994F423D75110E0D1B00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000050404083E322E6162504A9B27201D3E0A08081000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnYazdirClick
    end
    object btnSend: TcxButton
      Left = 3
      Top = 3
      Width = 101
      Height = 46
      Caption = 'Rapor Dizayn Modu'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000020000
        0002000000040000000500000007000000090301001A0804002D311F04664424
        0064562A00582511002500000000000000000000000000000000000000030000
        000A0000000E00000012000000160000001B0000001F000000250000002A0000
        0031000000370000003C000000403E21009FBF8A26FEE7AE23FFA6630CFFC587
        1FFFBC760EFFC87609EE01000001000000000000000000000000010000190704
        01510F090170170E0381211305912D1B09A039230DAC492E13B9573818C36743
        1FCE794F26DA8D5D2DE69F6B35F39A520DFF8B4701FFB46000FFDA8000FFE791
        05FFD17E03FFE69F1FFDC06F00CBBA6801C411080011000000000D090337C484
        42F8D08F54FFD1945BFFCF955DFFC7915BFFC2905BFFC2915EFFBE8F5EFFB98A
        5AFFB28452FFB17E46FFC56E0BFFA05400FFCD7400FFE78E00FFE89100FFE893
        00FFE89808FFE8980DFFE9A21CFFE79F17FF9853079E00000000000000021D15
        0858DFA76CFED6A36DFFC19462FFA27340FFA36C36FFB1763CFFB97B3EFFC181
        43FFCA8B4DFFD88A3DFFBE6800FFE18700FFE89300FFE79500FFE89800FFE897
        00FFE89700FFE89804FFAE6F1BFF8A4200FF3D1D003D00000000000000000201
        010758422098C79A6AFFA9824FFFBB8546FFD19B63FFDFAA71FFE1AD73FFE1AD
        74FFE1AE74FFE1AF76FFEE8F0CFFE89700FFBD7800FFAF5E00FFD57A04FFE9A1
        04FFE8A500FFE9A600FFC37200FFDC7F00FFA15400A725110025000000000503
        010A1610073975562BD9DEB87FFFB9894DFFD2A673FFE4B885FFE7BC88FFE7BC
        88FFE7BC88FFEAAF66FFEB9C04FFE8A800FFBB6C00FF814100FFB96D21FFCE8D
        25FFE8AF00FFE8AF00FFE4A20BFFD7941BFFAD6C0FFF874704A7000000010705
        02101C140945897147CDFFE9C8FFC29960FFD6B283FFEAC798FFEECB9DFFEECB
        9DFFEECB9DFFF0B66AFFE7B002FFE8AF08FF955603FFA05200FFCE7513FFD08C
        45FFE7AE05FFE8AE00FFE8B000FFC89318FF682E00FF823F00B3000000010605
        020E37291267FBE6C9FFFFEBD2FFD5B684FFE0C299FFF0D5ACFFF4D9B1FFF4D9
        B1FFF4D9B1FFF5D5AAFFF3B658FFE8BF2FFFDC9B1BFFD88300FFE69900FFED97
        1DFFE7B212FFE8AD06FFD99F00FFBD8411FF974B00C60E07000E000000000302
        01071A130835E1C59EF2F2D9B8FFE0C292FFEED7B3FFF7E3BFFFF9E5C2FFF9E5
        C2FFF9E5C2FFF9E5C2FFF8C88BFFE8CB55FFE8CA4DFFDDAA1EFFC07A06FFD198
        1AFFE8B51CFFE8B00FFFBD8003FFA25600FFBA6907D311080011000000000101
        0002030201070B08031A896E40BFF7DFBAFFFBE8C8FFFDEDCFFFFEEFD1FFFEEF
        D1FFFEEFD1FFFEEFD1FFFDDAB0FFE9C765FFE8CB63FFE8CC52FFE9C942FFE8BE
        2FFFE8B71FFFE8B010FFE2A420FFE19218FFC17714D004020004000000000000
        000000000000000000010403011BD8BF93EDFFEDCDFFFFF2D6FFFFF4D9FFFFF4
        DAFFFFF4DAFFFFF4DAFFFFF4DAFFFEDDB6FFF3C372FFE8CB4FFFE8C33BFFE8BB
        28FFE8B319FFE7A809FFE9B21AFF935E12CB0804001E00000000000000000000
        00000000000000000000000000012E25146EFDEACBFFFFF3D8FFFFF6DEFFFFF7
        E0FFFFF7E0FFFFF7E0FFFFF7E0FFFFF7E0FFFBD59FFFEAC244FFECAD2BFFEAB1
        1CFFE3A617FFA05601FFDFAE6DFF2E200E950000001200000000000000000000
        0000000000000000000000000000000000068D7751BFFFF1D6FFFFF7E1FFFFFA
        E5FFFFFAE6FFFFFAE6FFFFFAE6FFFFFAE6FFFFFAE6FFFEE9CAFFFFF2DBFFF7C1
        6BFFF0B354FFF8DAB2FFC5AF95FF6A583FC40000002000000001000000000000
        0000000000000000000000000000000000000705022CEDDAB7F9FFF6E0FFFFFA
        E7FFFFFCEAFFFFFCEAFFFFFCEAFFFFFCEAFFFFFCEAFFFFFCEAFFFFFCEAFFFFFC
        EAFFFFFAE8FFFFF5DFFFCAB192FFAF9877EE0000002E00000003000000000000
        000000000000000000000000000000000000000000025E4F329EFFF4DEFFFFFA
        E9FFFFFDEEFFFFFDEEFFFFFDEEFFFFFDEEFFFFFDEEFFFFFDEEFFFFFDEEFFFFFD
        EEFFFFFCEDFFFFF8E6FFD5BD9EFFD6C3A7FF0503004E00000007000000000000
        0000000000000000000000000000000000000000000006040128F8E7C9FEFFF9
        E9FFFFFDF0FFFFFEF2FFFFFEF2FFFFFEF2FFFFFEF2FFFFFEF2FFFFFEF2FFFFFE
        F2FFFFFEF2FFFFFBECFFE0C7A6FFD7CEC1FF170F06760000000C000000000000
        0000000000000000000000000000000000000000000000000004A18F70CDFFF6
        E8FFFFFCF2FFFFFEF5FFFFFEF5FFFFFEF5FFFFFEF5FFFFFEF5FFFFFEF5FFFFFE
        F5FFFFFEF5FFFFFCF1FFF6E7D2FFC1A991FF3F2F1CA500000014000000000000
        000000000000000000000000000000000000000000000000000250453093FFF4
        E6FFFFFCF3FFFFFEF7FFFFFEF7FFFFFEF7FFFFFEF7FFFFFEF7FFFFFEF7FFFFFE
        F7FFFFFEF7FFFFFCF4FFFEF5E7FFC7AB8EFF725A3DCC0000001C000000000000
        0000000000000000000000000000000000000000000000000001211A0E60FFF4
        E8FFFFF9F1FFFFFCF7FFFFFCF8FFFFFCF8FFFFFCF8FFFFFCF8FFFFFCF8FFFFFC
        F7FFFFFCF7FFFFFBF5FFFFF6ECFFD0B599FFA68B6AE400000011000000000000
        00000000000000000000000000000000000000000000000000000D09023CFCEE
        DFFFFFF4EAFFFFF8F0FFFFF8F0FFFFF8F0FFFFF7F0FFFFF7EFFFFFF8EFFFFFF7
        EFFFFFF7EFFFFFF6EDFFFFF2E6FFA38969DD0907013C00000003000000000000
        000000000000000000000000000000000000000000000000000005040123E6CA
        9EF7E4CDA9F4E0CAA7F1DCC7A4EFD2BF9EECCEBA9AE9CAB594E6BFAC8EE2B9A6
        89DEC9B085DABCA680D7B6A079D4977B4EC40000000800000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0001000000020000000100000001000000020000000200000001000000020000
        0002000000010000000100000001000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      OnClick = btnSendClick
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 37
    Top = 48
  end
  object frxReport1: TfrxReport
    Version = '4.15.13'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39355.062303159720000000
    ReportOptions.LastChange = 39355.062303159720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 8
    Top = 48
    Datasets = <>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.009912533333500000
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.009912533333500000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.009912533333500000
        object Memo1: TfrxMemoView
          Left = 642.419312533333400000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    OnLoadReport = frxDesigner1LoadReport
    OnSaveReport = frxDesigner1SaveReport
    Left = 105
  end
  object DataSource1: TDataSource
    DataSet = DATALAR.ADO_RAPORLAR
    Left = 96
    Top = 48
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 184
    Top = 40
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 216
    Top = 40
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    CheckboxAsShape = False
    Left = 248
    Top = 40
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 184
    Top = 32
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 248
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 8
    Top = 48
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 40
    Top = 48
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 72
    Top = 48
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 104
    Top = 48
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 144
    Top = 32
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxDBDataset7'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 168
    Top = 32
  end
  object frxDBDataset8: TfrxDBDataset
    UserName = 'frxDBDataset8'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 192
    Top = 32
  end
  object frxDBDataset9: TfrxDBDataset
    UserName = 'frxDBDataset9'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 232
    Top = 24
  end
  object frxDBDataset10: TfrxDBDataset
    UserName = 'frxDBDataset10'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 264
    Top = 8
  end
  object frxDBDataset11: TfrxDBDataset
    UserName = 'frxDBDataset11'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 280
    Top = 40
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 136
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 288
    Top = 8
  end
  object frxChartObject1: TfrxChartObject
    Left = 120
    Top = 40
  end
  object frxRichObject1: TfrxRichObject
    Left = 176
    Top = 40
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 8
    Top = 32
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 72
    Top = 32
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 40
  end
  object FormStorage1: TFormStorage
    StoredValues = <>
    Left = 248
    Top = 8
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 272
    Top = 8
  end
  object PrintDialog1: TPrintDialog
    Left = 280
    Top = 32
  end
  object frxDBDataset12: TfrxDBDataset
    UserName = 'frxDBDataset12'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 168
    Top = 64
  end
  object frxDBDataset0: TfrxDBDataset
    UserName = 'frxDBDataset0'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 168
  end
  object frxDBDataset00: TfrxDBDataset
    UserName = 'frxDBDataset00'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 208
    Top = 72
  end
  object frxADOComponents1: TfrxADOComponents
    DefaultDatabase = DATALAR.ADOConnection2
    Left = 8
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    TransportType = SMTP
    Left = 200
  end
  object frxADOComponents2: TfrxADOComponents
    DefaultDatabase = DATALAR.ADOConnection2
    Left = 72
  end
end
