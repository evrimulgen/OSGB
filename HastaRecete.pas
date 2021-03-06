unit HastaRecete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, TedaviKart,
  KadirLabel,GirisUnit,KadirType,Kadir,GetFormClass,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinsDefaultPainters, dxSkinscxPCPainter,Adodb,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxPC, cxGroupBox, cxImageComboBox,strUtils,Registry,
  cxDBLookupComboBox, cxLabel, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxCurrencyEdit, Vcl.StdCtrls, Vcl.Buttons, cxCheckBox,
  Vcl.ExtCtrls, sButton, sBitBtn, cxButtons, Menus, cxSplitter, cxListBox,
  cxCalendar, dxSkinBlack, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmHastaRecete = class(TfrmTedaviBilgisi)
    PopupMenu1: TPopupMenu;
    YeniReete1: TMenuItem;
    Dzenle1: TMenuItem;
    Reeteptal1: TMenuItem;
    Yazdr1: TMenuItem;
    ReeteTakipFormu1: TMenuItem;
    N61: TMenuItem;
    lemler1: TMenuItem;
    SMSGnder1: TMenuItem;
    MedulyaGnder1: TMenuItem;
    N101: TMenuItem;
    ReeteSorgula1: TMenuItem;
    ReeteOnay1: TMenuItem;
    HastannReeteleri1: TMenuItem;
    MedEczaneUygulamas1: TMenuItem;
    ReeteifremiDeitir1: TMenuItem;
    HastaRaporlar1: TMenuItem;
    laRaporuEkle1: TMenuItem;
    ReeteyiablonOlarakKaydet1: TMenuItem;
    N1: TMenuItem;
    DataSource12: TDataSource;
    ADO_ReceteIlacAciklama: TADOTable;
    DataSource11: TDataSource;
    ADO_receteAcikla: TADOTable;
    DataSource5: TDataSource;
    ADO_RECETE_DETAY: TADOTable;
    DataSource10: TDataSource;
    ADO_receteTani: TADOTable;
    DataSource4: TDataSource;
    ADO_Recete: TADOQuery;
    cxGrid10: TcxGrid;
    cxGridRecete: TcxGridDBTableView;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridReceteColumn1: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridLevel10: TcxGridLevel;
    cxGrid11: TcxGrid;
    cxGridReceteTani: TcxGridDBTableView;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridLevel11: TcxGridLevel;
    cxGrid4: TcxGrid;
    gridIlaclar: TcxGridDBTableView;
    gridIlaclarilacKodu: TcxGridDBColumn;
    gridIlaclarilacAdi: TcxGridDBColumn;
    gridIlaclarColumn2: TcxGridDBColumn;
    gridIlaclarkullanZamanUnit: TcxGridDBColumn;
    gridIlaclarkullanimZaman: TcxGridDBColumn;
    gridIlaclarColumn1: TcxGridDBColumn;
    gridIlaclarkullanimAdet: TcxGridDBColumn;
    gridIlaclarkullanimSekli: TcxGridDBColumn;
    gridIlaclarkullanimYolu: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid8: TcxGrid;
    cxGridReceteIlacAciklama: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel8: TcxGridLevel;
    cxPanelReceteBaslik: TcxGroupBox;
    cxPanelReceteBaslikBottom: TcxGroupBox;
    cxGrid9: TcxGrid;
    cxGridReceteAciklama: TcxGridDBTableView;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel9: TcxGridLevel;
    PopupMenuEkleSil: TPopupMenu;
    E1: TMenuItem;
    S1: TMenuItem;
    cxRecetePanel: TcxGroupBox;
    cxPanelReceteTanilar: TcxGroupBox;
    cxButtonKadirTaniEkle: TcxButtonKadir;
    cxButtonKadirTaniSil: TcxButtonKadir;
    cxPanelReceteAciklama: TcxGroupBox;
    cxButtonKadirAckSil: TcxButtonKadir;
    cxButtonKadirAckEkle: TcxButtonKadir;
    cxPanelReceteDetay: TcxGroupBox;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    cxButtonKadirIlacAckSil: TcxButtonKadir;
    cxButtonKadirIlacAckEkle: TcxButtonKadir;
    GridIlaclarPopup: TPopupMenu;
    N3: TMenuItem;
    N4: TMenuItem;
    A1: TMenuItem;
    A2: TMenuItem;
    T1: TMenuItem;
    L1: TMenuItem;
    K1: TMenuItem;
    cxChkSIK: TcxCheckBox;
    TaniListe: TListeAc;
    Oku: TTimer;
    ReceteSablonAc: TListeAc;
    R1: TMenuItem;
    S2: TMenuItem;
    PopupMenu2: TPopupMenu;
    ilacR2: TMenuItem;
    TaniR3: TMenuItem;
    TaniR4: TMenuItem;
    cxGridReceteColumn2: TcxGridDBColumn;
    cxGridReceteColumn3: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure ReceteGetir(_dosyaNo , gelisNo : string);
    procedure E1Click(Sender: TObject);
    procedure ilacEkle(islem : integer);
    procedure TaniEkle;
    procedure AckEkle(islem : integer);
    procedure Yazdir;
    procedure ReceteIptal;
    procedure MedulaSend(islem : integer);
    procedure YeniRecete(islem : integer);
    procedure cxButtonKadirAckSilClick(Sender: TObject);
    procedure cxButtonKadirTaniEkleClick(Sender: TObject);
    procedure cxButtonKadirAckEkleClick(Sender: TObject);
    procedure gridIlaclarDblClick(Sender: TObject);
    procedure cxButtonCClick(Sender: TObject);
    procedure cxGridReceteAciklamaDblClick(Sender: TObject);
    procedure cxGridReceteIlacAciklamaDblClick(Sender: TObject);
    procedure cxButtonKadirIlacAckSilClick(Sender: TObject);
    procedure cxButtonKadirIlacAckEkleClick(Sender: TObject);
    procedure OkuTimer(Sender: TObject);
    procedure EreceteNoSmsSend;
    procedure MedEczane;
    procedure SablondanYeniRecete;
    procedure ReceteyiSablonOlarakKaydet;
    procedure PopupMenu2Popup(Sender: TObject);
    procedure cxGridReceteDblClick(Sender: TObject);
    function ReceteImzalaGonder : string;
    function ReceteImzalaSil : string;
  private
    { Private declarations }
    function findMethod(dllHandle: Cardinal; methodName: string): FARPROC;
  public
    function Init(Sender: TObject) : Boolean; override;
    { Public declarations }
  end;


  TReceteImzala = procedure(Id : PWideChar;
                      recete : PWideChar;
                      doktorkullanici : PWideChar;
                      doktrsifre : PWideChar;
                      pin : PWideChar;
                      doktorTc : PWideChar;
                      TesisKodu : PWideChar;
                       var sonuc : PWideChar;
                      url : PWideChar); stdcall;

  TReceteImzalaDelete = procedure(Id : PWideChar;
                      recete : PWideChar;
                      doktorkullanici : PWideChar;
                      doktrsifre : PWideChar;
                      pin : PWideChar;
                      doktorTc : PWideChar;
                      TesisKodu : PWideChar;
                       var sonuc : PWideChar;
                       url : PWideChar); stdcall;

const _TableName_ = 'Recete';
      formGenislik = 1100;
      formYukseklik = 650;

const
LIB_DLL = 'D:\Projeler\VS\c#\ListeDLL\ListeDLL\bin\x86\Debug\NoktaDLL.dll';


var
  frmHastaRecete: TfrmHastaRecete;
  AdoHastaGelis : TADOQuery;
  AdoHastaGelisDataSource : TDataSource;
  AdoHastaListe : TADOQuery;
  Pm : TComponent;
  Reg : TRegistry;
  db : string;

implementation
      uses Data_Modul,AnaUnit,Rapor,receteSablonlari,IlacSarfListesi;
{$R *.dfm}

function TfrmHastaRecete.findMethod(dllHandle: Cardinal;  methodName: string): FARPROC;
begin
  Result := GetProcAddress(dllHandle, pchar(methodName));
end;

function TfrmHastaRecete.ReceteImzalaGonder : string;
var
  imzala : TReceteImzala;
  dllHandle: Cardinal;
  msj : integer;
  TS : TStringList;
  recete,doktorKullanici,doktorsifre,pin,doktorTc,TesisKodu,receteId,url: WideString;
  ss : PWideChar;
  sonuc : boolean;
  ado : TADOQuery;
  sql : string;
begin
  url := datalar.receteURL;
  sql := 'sp_HastaReceteToXML ' + ADO_Recete.FieldByName('id').AsString;
  QuerySelect(sql);

  ss := '';
  receteId := ADO_Recete.FieldByName('id').AsString;
  recete := SelectAdo.FieldByName('recete').AsString;
  doktorKullanici := SelectAdo.FieldByName('doktorKullanici').AsString;
  doktorsifre :=  SelectAdo.FieldByName('doktorsifre').AsString;
  pin :=  SelectAdo.FieldByName('pin').AsString;
  doktorTc :=  SelectAdo.FieldByName('doktorTc').AsString;
  TesisKodu :=  SelectAdo.FieldByName('TesisKodu').AsString;

  dllHandle := LoadLibrary(LIB_DLL);
  if dllHandle = 0 then
    exit;


  @imzala := findMethod(dllHandle, 'ReceteImzalaGonder');
  if addr(imzala) <> nil then
  imzala(PWideChar(receteId),PWideChar(recete),
                                PWideChar(doktorKullanici),PWideChar(doktorsifre),
                                PWideChar(pin),PWideChar(doktorTc),PWideChar(TesisKodu),ss,
                                PWideChar(datalar.receteURL));

  ReceteImzalaGonder := ss;

  if not Assigned(imzala) then
    raise Exception.Create(LIB_DLL + ' i�ersinde ReceteImzalaGonder bulunamad�!');

  FreeLibrary(dllHandle);
end;


function TfrmHastaRecete.ReceteImzalaSil : string;
var
  imzala : TReceteImzalaDelete;
  dllHandle: Cardinal;
  msj : integer;
  TS : TStringList;
  recete,doktorKullanici,doktorsifre,pin,doktorTc,TesisKodu,receteId,url: WideString;
  ss : PWideChar;
  sonuc : boolean;
  ado : TADOQuery;
  sql : string;
begin
  url := datalar.receteURL;
  sql := 'sp_HastaReceteSilToXML ' + ADO_Recete.FieldByName('id').AsString;
  QuerySelect(sql);

  ss := '';
  receteId := ADO_Recete.FieldByName('id').AsString;
  recete := SelectAdo.FieldByName('ReceteSil').AsString;
  doktorKullanici :=  SelectAdo.FieldByName('doktorKullanici').AsString;
  doktorsifre :=  SelectAdo.FieldByName('doktorsifre').AsString;
  pin :=  SelectAdo.FieldByName('pin').AsString;
  doktorTc :=  SelectAdo.FieldByName('doktorTc').AsString;
  TesisKodu :=  SelectAdo.FieldByName('TesisKodu').AsString;

  dllHandle := LoadLibrary(LIB_DLL);
  if dllHandle = 0 then
    exit;


  @imzala := findMethod(dllHandle, 'ReceteImzalaSil');
  if addr(imzala) <> nil then
  imzala(PWideChar(receteId),PWideChar(recete),
                                PWideChar(doktorKullanici),PWideChar(doktorsifre),
                                PWideChar(pin),PWideChar(doktorTc),PWideChar(TesisKodu),ss,
                                PWideChar(datalar.receteURL));

  ReceteImzalaSil := ss;

  if not Assigned(imzala) then
    raise Exception.Create(LIB_DLL + ' i�ersinde ReceteImzalaSil bulunamad�!');

  FreeLibrary(dllHandle);
end;

procedure TfrmHastaRecete.MedEczane;
var
  d,u,s : string;
begin
  d := copy(ADO_Recete.FieldByName('doktor').asstring,1,4);
  MedEczaneGit(datalar._doktorReceteUser,datalar._doktorRecetePas,_TC_);
end;

procedure TfrmHastaRecete.ReceteyiSablonOlarakKaydet;
var
  sql , sablon , id, idd : string;
  ado : TADOQuery;
begin
   sablon := InputBox('Re�ete �ablon','�ablon Tan�m� Giriniz','Sablon1');
   if sablon <> ''
   then begin
     try
       ado := TADOQuery.Create(nil);
       sql := 'insert into ReceteSablon (sablonAdi,receteTur,receteAltTur,doktor) ' +
              ' values ( ' + QuotedStr(sablon) + ',' +
                             QuotedStr(ADO_Recete.fieldbyname('receteTur').AsString) + ',' +
                             QuotedStr(ADO_Recete.fieldbyname('receteAltTur').AsString) + ',' +
                             QuotedStr(ADO_Recete.fieldbyname('doktor').AsString) + ') select SCOPE_IDENTITY() as id ';

       datalar.QuerySelect(ado,sql);
       id := ado.fieldbyname('id').AsString;


       ADO_RECETE_DETAY.First;
       while not ADO_RECETE_DETAY.Eof do
       begin

        sql := 'insert into ReceteDetaySablon (ReceteID,ilacKodu,ilacAdi,EtkenMadde,kullanimZaman,kullanimAdet,kullanZamanUnit '+
                                              ' ,kullanimSekli,kullanimYolu,kullanimAdet2,adet) ' +
                            ' values(' + id + ',' +
                                         QuotedStr(ADO_RECETE_DETAY.fieldbyname('ilacKodu').AsString) + ',' +
                                         QuotedStr(ADO_RECETE_DETAY.fieldbyname('ilacAdi').AsString) + ',' +
                                         QuotedStr(ADO_RECETE_DETAY.fieldbyname('EtkenMadde').AsString) + ',' +
                                         QuotedStr(ADO_RECETE_DETAY.fieldbyname('kullanimZaman').AsString) + ',' +
                                         ADO_RECETE_DETAY.fieldbyname('kullanimAdet').AsString + ',' +
                                         QuotedStr(ADO_RECETE_DETAY.fieldbyname('kullanZamanUnit').AsString) + ',' +
                                         QuotedStr(ADO_RECETE_DETAY.fieldbyname('kullanimSekli').AsString) + ',' +
                                         QuotedStr(ADO_RECETE_DETAY.fieldbyname('kullanimYolu').AsString) + ',' +
                                         ADO_RECETE_DETAY.fieldbyname('kullanimAdet2').DisplayText + ',' +
                                         ADO_RECETE_DETAY.fieldbyname('adet').AsString + ') select SCOPE_IDENTITY() as id' ;

         datalar.QuerySelect(ado,sql);
         idd := ado.fieldbyname('id').AsString;

         ADO_ReceteIlacAciklama.First;
         while not ADO_ReceteIlacAciklama.Eof do
         begin
            sql := ' insert into ReceteIlacAciklamaSablon (receteDetayId,aciklamaTip,aciklama) ' +
                                ' values ( ' + idd + ',' +
                                QuotedStr(ADO_ReceteIlacAciklama.fieldbyname('aciklamaTip').AsString) + ',' +
                                QuotedStr(ADO_ReceteIlacAciklama.fieldbyname('aciklama').AsString) + ')';
            datalar.QueryExec(ado,sql);
            ADO_ReceteIlacAciklama.Next;
         end;


         ADO_RECETE_DETAY.Next;
       end;

       ADO_receteAcikla.First;
       while not ADO_receteAcikla.Eof do
       begin
         sql := 'insert into ReceteAciklamaSablon (receteId,aciklamaTip,aciklama) ' +
                     'values ( ' + id + ',' +
                     QuotedStr(ADO_receteAcikla.fieldbyname('aciklamaTip').AsString) + ',' +
                     QuotedStr(ADO_receteAcikla.fieldbyname('aciklama').AsString) + ')';
         datalar.QueryExec(ado,sql);
         ADO_receteAcikla.Next;
       end;


       ADO_receteTani.First;
       while not ADO_receteTani.Eof do
       begin
         sql := 'insert into receteTaniSablon (receteId,taniKodu,tani) ' +
                     'values ( ' + id + ',' +
                     QuotedStr(ADO_receteTani.fieldbyname('taniKodu').AsString) + ',' +
                     QuotedStr(ADO_receteTani.fieldbyname('tani').AsString) + ')';
         datalar.QueryExec(ado,sql);
         ADO_receteTani.Next;
       end;

       ShowMessageSkin('�ablon Kay�t Edildi','','','info');

     except on e : Exception do
      begin
        ShowMessageSkin(e.Message,'','','info');
      end;
     end;
     ado.Free;
   end;

end;


procedure TfrmHastaRecete.SablondanYeniRecete;
var
  sql : string;
  ado , adod : TADOQuery;
  L : ArrayListeSecimler;
begin
   L := ReceteSablonAc.ListeGetir;

   if L[0].kolon1 <> ''
   Then Begin
     ado := TADOQuery.Create(nil);
     adod := TADOQuery.Create(nil);

     sql := 'select * from ReceteDetaySablon where ReceteId = ' + L[0].kolon1;
     datalar.QuerySelect(ado,sql);
     while not ado.Eof do
     begin
       ADO_RECETE_DETAY.Append;
       ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := ado.FieldByName('ilacKodu').AsString;
       ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := ado.FieldByName('ilacAdi').AsString;
       ADO_RECETE_DETAY.FieldByName('adet').AsInteger := ado.FieldByName('adet').AsInteger;
       ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := ado.FieldByName('kullanZamanUnit').AsString;
       ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := ado.FieldByName('kullanimZaman').AsString;
       ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsInteger := ado.FieldByName('kullanimAdet2').AsInteger;
       ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsFloat := ado.FieldByName('kullanimAdet').AsFloat;
       ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString := ado.FieldByName('kullanimYolu').AsString;
       ADO_RECETE_DETAY.post;

       sql := 'select * from ReceteIlacAciklamaSablon where receteDetayId = ' + ado.fieldbyname('id').AsString;
       datalar.QuerySelect(adod,sql);
       while not adod.Eof do
       begin
         ADO_ReceteIlacAciklama.Append;
         ADO_ReceteIlacAciklama.FieldByName('aciklamaTip').AsString := adod.FieldByName('aciklamaTip').AsString;
         ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString := adod.FieldByName('aciklama').AsString;
         ADO_ReceteIlacAciklama.post;
         adod.Next;
       end;
       ado.Next;
     end;

     sql := 'select * from ReceteTaniSablon where receteId = ' + L[0].kolon1;
     datalar.QuerySelect(ado,sql);
     ado.First;
     while not ado.Eof do
     begin
         try
          ADO_receteTani.Append;
          ADO_receteTani.FieldByName('taniKodu').AsString := ado.FieldByName('taniKodu').AsString;
          ADO_receteTani.FieldByName('tani').AsString := ado.FieldByName('tani').AsString;
          ADO_receteTani.post;
         except
          ADO_receteTani.Cancel;
         end;
         ado.Next;
     end;


     sql := 'select * from ReceteAciklamaSablon where receteId = ' + L[0].kolon1;
     datalar.QuerySelect(ado,sql);
     while not ado.Eof do
     begin
         ADO_receteAcikla.Append;
         ADO_receteAcikla.FieldByName('aciklamaTip').AsString := ado.FieldByName('aciklamaTip').AsString;
         ADO_receteAcikla.FieldByName('aciklama').AsString := ado.FieldByName('aciklama').AsString;
         ADO_receteAcikla.post;
         ado.Next;
     end;
   End;
end;


procedure TfrmHastaRecete.EreceteNoSmsSend;
var
 tel,msj,Hata : string;
begin
  if (ADO_Recete.FieldByName('EreceteNo').AsString = '') or
     (ADO_Recete.FieldByName('EreceteNo').AsString = '0000')
  then begin
    ShowMessageSkin('E-Re�ete Kay�tl� De�il ','','','info');
    exit;
  end;

  if mrYes = ShowMessageSkin('E-Re�ete Numaran�z SMS ile Bildirilecek','','','msg')
  then begin
      //datalar.Login;
      tel := dosyaNoTel(_dosyaNO_);
      msj := 'E-Re�ete Numaran�z : ' + ADO_Recete.FieldByName('EreceteNo').AsString + #13 +
             ' Sa�l�kl� G�nler Dileriz';

      if tel = ''
      then begin
        ShowMessageSkin('Mobil Telefon bo� olmamal�d�r','','','info');
        exit;
      end;

      if SmsGonder(datalar.SMSHesapUser,datalar.SMSHesapSifre,datalar.SMSHesapFrom,tel,msj,Hata)
      Then
        ShowMessageSkin('Sms G�nderildi','','','info')
      Else
        ShowMessageSkin(Hata,'','','info');

  end;
end;

procedure TfrmHastaRecete.OkuTimer(Sender: TObject);
var
  okuS : string;
begin
  inherited;
    okuS := Reg.ReadString('oku');
    if okuS = '1'
    Then Begin
      ADO_Recete.Refresh;
      Reg.WriteString('oku','0');
      TTimer(sender).Enabled := false;
      Reg.Free;
    End;
end;



procedure TfrmHastaRecete.PopupMenu2Popup(Sender: TObject);
begin
  inherited;
  case TcxGrid(TPopupMenu(sender).PopupComponent).Tag of
  0 : begin
        TaniR4.Visible := true;
        TaniR3.Visible := true;
        ilacR2.Visible := false;
      end;

  1 : begin
        TaniR4.Visible := false;
        TaniR3.Visible := false;
        ilacR2.Visible := True;
      end;

  end;
end;

procedure TfrmHastaRecete.MedulaSend(islem : integer);
var
  dosyaNo , gelisNo , id , doktor: string;
 // receteCvp : SaglikTesisiReceteIslemleri1.EreceteGirisCevapDVO;
  msj , Sonuc : string;
  memo : Tmemo;
  _dn_ ,_gn_ , _id_ , _d_ , _s , _p , _erNo_  : string;
  _exe : PAnsiChar;
begin
  Reg := Tregistry.Create;
  Reg.RootKey := HKEY_CURRENT_USER;
  Reg.OpenKey('SOFTWARE\NOKTA\Eimza',True);
  Oku.Enabled := true;
  db := Decode64(RegOku('OSGB_db_name'));

  _dn_ := ADO_Recete.FieldByName('dosyaNo').AsString;
  _gn_ := ADO_Recete.FieldByName('gelisNo').AsString;
  _id_ := ADO_Recete.FieldByName('id').AsString;
  _d_ := copy(ADO_Recete.FieldByName('doktor').AsString,1,4);
  _erNo_ := ADO_Recete.FieldByName('eReceteNo').AsString;

  case islem of
   ReceteMedulaKaydet :  begin
                            DurumGoster(True,False,'Re�eteniz Kay�t ��in �mzalan�yor...L�tfen Bekleyiniz...');
                            Sonuc := ReceteImzalaGonder;
                            DurumGoster(False,False,'');
                            ShowMessageSkin(Sonuc,'','','info');
                          end;

     // _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\E-imza\imza.exe ' + 'I' + ' '+ _dn_ + ' ' + _gn_ + ' ' + _id_ + ' ' + _d_  + ' ' + datalar.AktifSirket));
   ReceteMedulaSil : begin
                            DurumGoster(True,False,'Re�ete Silinmek �zere �mzalan�yor...L�tfen Bekleyiniz...');
                            Sonuc := ReceteImzalaSil;
                            DurumGoster(False,False,'');
                            ShowMessageSkin(Sonuc,'','','info');
                      end;

     // _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\E-imza\imza.exe ' + 'D' + ' '+ _id_ + ' ' + _erNo_ + ' ' + _d_ + ' ' + datalar.AktifSirket));
   ReceteMedulaOnay :
      _exe :=  PAnsiChar(AnsiString('C:\NoktaV3\E-imza\imza_OSGB.exe ' + 'O' + ' '+ _id_ + ' ' + _erNo_ + ' ' + _d_));
  end;

  WinExec(_exe,SW_SHOW);

end;

procedure TfrmHastaRecete.ReceteIptal;
var
  sql : string;
  ado : TADOQuery;
begin
   if (ADO_Recete.FieldByName('ereceteNo').AsString = '') or
      (ADO_Recete.FieldByName('ereceteNo').AsString = '0000')
   Then Begin
       if MrYes = ShowMessageSkin('Re�ete �ptal Ediliyor Eminmisiniz ?','','','msg')
       Then Begin
        try
         ado := TADOQuery.Create(nil);
         sql := 'delete from recete where id = ' + ADO_Recete.fieldbyname('Id').AsString;
         datalar.QueryExec(ado,sql);
        // sql := 'delete from receteAciklama where ReceteID = ' + ADO_Recete.fieldbyname('Id').AsString;
        // datalar.QueryExec(ado,sql);
        // sql := 'delete from ReceteDetay where ReceteID = ' + ADO_Recete.fieldbyname('Id').AsString;
        // datalar.QueryExec(ado,sql);
         //ADO_Recete.Delete;
         ShowMessageSkin('Re�ete �ptal Edildi','','','info');
         ADO_Recete.Active := false;
         ado_recete.Active := true;
        except on e : Exception do
        begin
           ShowMessageSkin(e.Message,'','','info');
        end;
        end;
        ado.Free;
       End;
   End
   Else
    ShowMessageSkin('E-Re�ete Kay�t No silmeden Re�ete Silinemez','','','info');
end;

procedure TfrmHastaRecete.YeniRecete(islem: Integer);
var
    sql : string;
    ado , adoD : TADOQuery;
    receteNo , songel : string;
    ack : TStringList;
    j : integer;
begin
    datalar.YeniRecete.doktor := datalar.doktor;
    datalar.YeniRecete.doktorAdi := doktorAdi(datalar.doktor);
    datalar.YeniRecete.protokolNo := EnsonSeansProtokolNo(_dosyaNo_);
    datalar.YeniRecete.Tarih := datetostr(date);
    datalar.YeniRecete.ReceteTuru := '';
    datalar.YeniRecete.ReceteAltTuru := '';

    if islem = ReceteYeni
    then
    if mrYes = ShowPopupForm('Yeni Re�ete',islem)
    then begin
       if islem = ReceteYeni
       then begin
         ADO_Recete.Append;
         ADO_Recete.FieldByName('dosyaNo').AsString := _dosyaNO_;
         ADO_Recete.FieldByName('gelisNo').AsString := _gelisNo_;
         ADO_Recete.FieldByName('gelisNo').AsString := AdoHastaGelis.FieldByName('gelisNo').AsString;
         ADO_Recete.FieldByName('tarih').AsString := datalar.YeniRecete.Tarih;
         ADO_Recete.FieldByName('ReceteTur').AsString := datalar.YeniRecete.ReceteTuru;
         ADO_Recete.FieldByName('ReceteAltTur').AsString := datalar.YeniRecete.ReceteAltTuru;
         ADO_Recete.FieldByName('doktor').AsString := datalar.YeniRecete.doktor;//+'-'+datalar.YeniRecete.doktorAdi;
         ADO_Recete.FieldByName('ProtokolNo').AsString := datalar.YeniRecete.protokolNo;
         ADO_Recete.FieldByName('ereceteNo').AsString := '0000';
         ADO_Recete.Post;



      //   ADO_receteTani.Append;
       //  ADO_ReceteTani.FieldByName('taniKodu').AsString := 'N18';
      //   ADO_Recetetani.FieldByName('tani').AsString := 'Kronik B�brek Yetmezli�i';
       //  ADO_receteTani.Post;
       end;
    end;


    if islem = ReceteYeniRecete
    then begin
        receteNo := ADO_Recete.fieldbyname('id').AsString;
        try
          songel := Songelis(_dosyaNo_);
        except
          songel := _gelisNo_;
        end;

        if mrYes = ShowMessageSkin('Re�eteden Re�ete �retilecek , Eminmisiniz?','','','msg')
        then begin
          try
           ado := TADOQuery.Create(nil);
           adoD := TADOQuery.Create(nil);

           sql := 'select * from Recete where id = ' + receteNo;
           datalar.QuerySelect(ado,sql);
           if not ado.Eof
           then begin
              ADO_Recete.Append;
              ADO_Recete.FieldByName('dosyaNo').AsString := _dosyaNo_;
              ADO_Recete.FieldByName('gelisNo').AsString := songel;
              ADO_Recete.FieldByName('recetetur').AsString := ado.fieldbyname('receteTur').AsString;
              ADO_Recete.FieldByName('protokolNo').AsString := EnsonSeansProtokolNo(_dosyaNo_);
              ADO_Recete.FieldByName('doktor').AsString := datalar.YeniRecete.doktor+'-'+datalar.YeniRecete.doktorAdi;
              ADO_Recete.FieldByName('receteAltTur').AsString := ado.fieldbyname('receteAltTur').AsString;
         //   ADO_Recete.FieldByName('Tani').AsString := txtTani.Text;
              ADO_Recete.FieldByName('Tarih').AsDateTime := date();
              ADO_Recete.Post;

              sql := 'select * from ReceteDetay where ReceteId = ' + receteNo;
              datalar.QuerySelect(adoD,sql);
              while not adoD.Eof do
              begin
                 ADO_RECETE_DETAY.Append;
                 ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := adoD.FieldByName('ilacKodu').AsString;
                 ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := adoD.FieldByName('ilacAdi').AsString;
                 ADO_RECETE_DETAY.FieldByName('adet').AsInteger := adoD.FieldByName('adet').AsInteger;
                 ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := adoD.FieldByName('kullanZamanUnit').AsString;
                 ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := adoD.FieldByName('kullanimZaman').AsString;
                 ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsInteger := adoD.FieldByName('kullanimAdet2').AsInteger;
                 ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsFloat := adoD.FieldByName('kullanimAdet').AsFloat;
                 ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString := adoD.FieldByName('kullanimYolu').AsString;
                 ADO_RECETE_DETAY.post;

                 ack := IlacReceteAciklama(_dosyaNo_,songel,adoD.FieldByName('ilacKodu').AsString,
                                            inttostr(adoD.FieldByName('kullanimAdet2').AsInteger *
                                                     adoD.FieldByName('kullanimAdet').AsInteger));


                 sql := 'delete from ReceteIlacAciklama where receteDetayId = ' + ADO_RECETE_DETAY.fieldbyname('id').AsString;
                 datalar.QueryExec(ado,sql);

                 ADO_ReceteIlacAciklama.Active := false;
                 ADO_ReceteIlacAciklama.Active := true;

                for j := 0 to ack.Count-1 do
                begin
                    ADO_ReceteIlacAciklama.Append;
                    ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString := copy(ack[j],3,500);
                    ADO_ReceteIlacAciklama.FieldByName('aciklamaTip').AsString := trim(copy(ack[j],1,2));
                    ADO_ReceteIlacAciklama.Post;
                    if copy(ADO_ReceteIlacAciklama.FieldByName('aciklama').AsString,1,4) = 'Hata'
                    Then ShowMessageSkin('Dikkat , Doz Bilgisini Kontrol Ediniz','','','info');
                end;

                 adoD.Next;
              end;

              sql := 'select * from ReceteTani where ReceteId = ' + receteNo;
              datalar.QuerySelect(adoD,sql);
              while not adoD.Eof do
              begin
                ADO_receteTani.Append;
                ADO_receteTani.FieldByName('taniKodu').AsString := adoD.FieldByName('taniKodu').AsString;
                ADO_receteTani.FieldByName('tani').AsString := adoD.FieldByName('tani').AsString;
                ADO_receteTani.post;
                adoD.Next;
              end;
           end;
           ado.Free;
           adoD.Free;
          except on e : Exception do
           begin
             ShowMessageSkin(e.Message,'','','info');
           end;
          end;
        end;
    end; // ReceteYeniRecete


    if islem = ReceteYeniSablon
    then begin
        SablondanYeniRecete;
    end;


end;



procedure TfrmHastaRecete.Yazdir;
var
  sql , id : string;
  ado,ado1,ado2,ado3 : TADOQuery;
  TopluDataset : TDataSetKadir;
begin
   id := ADO_Recete.fieldbyname('id').AsString;
   ado := TADOQuery.Create(nil);
   ado.close;
   ado.SQL.Clear;
   sql := 'exec sp_epikriz ' + QuotedStr(_dosyaNo_) + ',' + QuotedStr('Kurum');
   datalar.QuerySelect(ado,sql);
   TopluDataset.Dataset1 := ado;

   ado1 := TADOQuery.Create(nil);
   ado1.close;
   ado1.SQL.Clear;

   ado2 := TADOQuery.Create(nil);

   ado3 := TADOQuery.Create(nil);

   sql := ' select * from Recete R ' +
            'left join receteDetay D on R.id = D.ReceteId ' +
            'left join gelisler g on g.dosyaNO = R.dosyaNo and g.gelisNo = R.gelisNo ' +
            'left join ILACLAR I on I.code = D.ilacKodu ' +
            'left join PersonelKart H on H.dosyaNo = R.dosyaNo ' +
            'where R.id = ' + id +
            ' order by R.id';

   datalar.QuerySelect(ado1,sql);
   TopluDataset.Dataset2 := ado1;


   sql := 'select rd.ilacAdi,ria.aciklama from recete r ' +
          ' left join receteDetay rd on rd.receteId = r.id ' +
          ' left join ReceteIlacAciklama ria on ria.receteDetayId = rd.id ' +
          ' where r.id = ' + id;

   datalar.QuerySelect(ado2,sql);
   TopluDataset.Dataset3 := ado2;


   sql := 'select taniKodu,rt.tani from recete r ' +
          ' left join receteTani rt on rt.receteId = r.id ' +
          ' where r.id = ' + id;

   datalar.QuerySelect(ado3,sql);
   TopluDataset.Dataset4 := ado3;


   PrintYap('050','\Re�ete',inttoStr(TagfrmHastaRecete) ,TopluDataset,pTNone);

   ado.Free;
   ado1.Free;
   ado2.free;
   ado3.free;

end;



procedure TfrmHastaRecete.TaniEkle;
var
  t : string;
  List : ArrayListeSecimler;
  I : integer;
  sql : string;
  ado : TADOQuery;
begin
   TaniListe.Where := ifThen(cxChkSIK.Checked,'Sikkullan > 0','');
   TaniListe.SkinName := AnaForm.dxSkinController1.SkinName;
   TaniListe.SiralamaKolonu := ifThen(cxChkSIK.Checked,'Sikkullan Desc,TANI','TANI');
   List := TaniListe.ListeGetir;

   for I := 0 to length(List) - 1 do
   begin
    try
       if not ADO_receteTani.Locate('taniKodu',list[I].kolon1,[])
       then begin
         ADO_receteTani.Append;
         ADO_receteTani.FieldByName('taniKodu').AsString := list[I].kolon1;
         ADO_receteTani.FieldByName('tani').AsString := list[I].kolon2;
         ADO_receteTani.post;

         sql := 'update icd_teshisleri set Sikkullan = Sikkullan + 1 where ICDKODU = ' + QuotedStr(list[I].kolon1);
         datalar.QueryExec(ado,sql);
       end;
    except
     ado.Free;
     exit;
    end;
   end;

   ado.Free;
end;

procedure TfrmHastaRecete.AckEkle(islem : integer);
begin
     if mrYes = ShowPopupForm('Re�ete A��klama Ekle',islem)
    then begin
       if islem in [ReceteAckEkle,ReceteAckDuzenle]
       then begin
         if islem = ReceteAckEkle then ADO_receteAcikla.Append else ADO_receteAcikla.Edit;
         ADO_receteAcikla.FieldByName('aciklamaTip').AsString := datalar.ReceteAciklama.ackKod;
         ADO_receteAcikla.FieldByName('aciklama').AsString := datalar.ReceteAciklama.ack;
         ADO_receteAcikla.Post;
       end;

       if islem in [ReceteIlacAckEkle,ReceteIlacAckDuzenle]
       then begin
         if islem = ReceteIlacAckEkle then ADO_ReceteIlacAciklama.Append else ADO_ReceteIlacAciklama.Edit;
         ADO_receteIlacAciklama.FieldByName('aciklamaTip').AsString := datalar.ReceteAciklama.ackKod;
         ADO_receteIlacAciklama.FieldByName('aciklama').AsString := datalar.ReceteAciklama.ack;
         ADO_receteIlacAciklama.Post;
       end;
    end;
end;

procedure TfrmHastaRecete.ilacEkle(islem : integer);
var
  t : string;
  List , ack : TStringList;
  ado : TADOQuery;
  key : word;
  i : integer;
begin
   if islem = ReceteIlacEkle
   then
   if ADO_Recete.FieldByName('ereceteNo').AsString = '0000'
   Then Begin
     t := 'ILACLARMM';
     try
      Application.CreateForm(TfrmIlacSarf, frmIlacSarf);
      GorselAyar(frmIlacSarf,datalar.global_img_list4);
  //    frmIlacSarf.GonForm('frmHastaRecete',_dosyaNo_,_gelisNo_);
      frmIlacSarf._dosyaNO_ := _dosyaNo_;
      frmIlacSarf._gelisNO_ := _gelisNo_;
      frmIlacSarf.Tanilar('Recete',t );
      frmIlacSarf.Tag := TagfrmIlacSarf;
      frmIlacSarf.cxTab.Tabs[0].Caption := '�la�lar';
      frmIlacSarf.ShowModal;
      FreeAndNil(frmIlacSarf);
     except
     end;
   End
   Else ShowMessageSkin('E-Re�eteNo su Olan Re�eteye �la� Eklenemez','','','info');

   if islem = ReceteIlacDuzenle
   then
    if mrYes = ShowPopupForm('Re�ete �la� Duzenle',islem)
    then begin
       ADO_RECETE_DETAY.Edit;
       ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString := datalar.ReceteSatir.barkod;
       ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString := datalar.ReceteSatir.barkodadi;
       ADO_RECETE_DETAY.FieldByName('adet').AsInteger := datalar.ReceteSatir.kutuadet;
       ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsString := inttostr(datalar.ReceteSatir.peryot);
       ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsString := inttostr(datalar.ReceteSatir.peryotAdet);
       ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsInteger := datalar.ReceteSatir.doz1;
       ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsFloat := datalar.ReceteSatir.doz2;
       ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString := datalar.ReceteSatir.kulyol;
       ADO_RECETE_DETAY.post;

       ADO_RECETE_DETAY.Active := false;
       ADO_RECETE_DETAY.Active := True;
       ADO_receteTani.Active := false;
       ADO_ReceteIlacAciklama.Active := false;
       ADO_receteTani.Active := True;
       ADO_ReceteIlacAciklama.Active := True;
    end;


   if islem = ReceteIlacEkleIlacTedavi
   then
     IlacTedaviKarti(_dosyaNo_,_gelisNo_,NoktasizTarih(AdoHastaGelis.FieldByName('Tarih').AsString),ReceteIlacEkleIlacTedavi);


end;

procedure TfrmHastaRecete.ReceteGetir(_dosyaNo , gelisNo : string);
var
  sql : string;
begin
 if (_dosyaNo <> '') and (gelisNo <> '')
 then begin

    sql := 'select *,d.tanimi ADI from Recete r' +
           ' left join doktorlarT d on d.kod = substring(r.doktor,1,4) ' +
           ' where r.dosyaNo = ' + QuotedStr(_dosyaNo) +
           ' and r.gelisNo = ' + gelisNo +
             ' order by r.tarih desc';
    datalar.QuerySelect(ADO_Recete,sql);
    Ado_Recete.last;
    Ado_Recete.First;
    ADO_RECETE_DETAY.Open;
    ADO_receteTani.Open;
    ADO_receteAcikla.Open;
    ADO_ReceteIlacAciklama.Open;

 end;
end;


procedure TfrmHastaRecete.cxButtonCClick(Sender: TObject);
var
 Form : TGirisForm;
 GirisFormRecord : TGirisFormRecord;
begin
  datalar.KontrolUserSet := False;
  inherited;
  if datalar.KontrolUserSet = True then exit;

  case Tcontrol(sender).Tag of
  -4 : begin
         Yazdir;
       end;

  -1 : begin
        YeniRecete(ReceteYeni);
       end;
  -6 : begin
        YeniRecete(ReceteYeniRecete);
       end;
 -19 : begin
         YeniRecete(ReceteYeniSablon);
       end;
 -18 : begin
         ReceteyiSablonOlarakKaydet;
       end;
  -3 : begin
         ReceteIptal;
       end;
  -9 : begin
         MedulaSend(ReceteMedulaKaydet);
       end;
  -10 : begin
          MedulaSend(ReceteMedulaSil);
        end;
  -12 : begin
          MedulaSend(ReceteMedulaOnay);
        end;
 -8 : begin
        EReceteNoSmsSend;
       end;
 -14 : begin
         MedEczane;
       end;
 -15 : begin
         SifreDegistir('',ReceteSifre);
       end;
 -16 : begin
         HastaRapor(_dosyaNo_,_gelisNO_);
       end;
 -30 : begin
         Application.CreateForm(TfrmReceteSablon, frmReceteSablon);
         frmReceteSablon.ShowModal;
         FreeAndNil(frmReceteSablon);
       end;
 -31 : begin
          GirisFormRecord.F_HastaAdSoyad_ := _HastaAdSoyad_;
          GirisFormRecord.F_dosyaNO_ := _dosyaNO_;
          GirisFormRecord.F_provizyonTarihi_ := _provizyonTarihi_;

          Form := FormINIT(TagfrmSon6AylikTetkikSonuc,GirisFormRecord);
          if Form <> nil then Form.showModal;
        //  Son6AylikTetkikSonuc(_dosyaNO_,_provizyonTarihi_);

       end;

 -40 : begin
          ReceteIlacAckTaniEkleMedula(ReceteIlacAckEkleMedula,
                                      ADO_Recete.FieldByName('dosyaNo').AsString,
                                      ADO_Recete.FieldByName('gelisNo').AsString,
                                      ADO_Recete.FieldByName('ereceteNo').AsString,
                                      ADO_Recete.FieldByName('id').AsString,
                                      copy(ADO_Recete.FieldByName('doktor').AsString,1,4),
                                      '',
                                      ADO_ReceteIlacAciklama.FieldByName('id').AsString);
       end;
 -50 :begin
         ReceteIlacAckTaniEkleMedula(ReceteTaniEkleMedula,
                              ADO_Recete.FieldByName('dosyaNo').AsString,
                              ADO_Recete.FieldByName('gelisNo').AsString,
                              ADO_Recete.FieldByName('ereceteNo').AsString,
                              ADO_Recete.FieldByName('id').AsString,
                              copy(ADO_Recete.FieldByName('doktor').AsString,1,4),
                              ADO_receteTani.FieldByName('taniKodu').AsString,
                              '');
      end;

 -51 : begin
         TaniIlaciliskilendir(ADO_receteTani.FieldByName('taniKodu').AsString,
                              ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString,
                              QuotedStr(ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsString +'x'+ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsString),
                              ADO_RECETE_DETAY.FieldByName('adet').AsString,
                              ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString);
       end;

  end;
end;

procedure TfrmHastaRecete.cxButtonKadirAckEkleClick(Sender: TObject);
begin
  inherited;
  AckEkle(ReceteAckEkle);
end;

procedure TfrmHastaRecete.cxButtonKadirAckSilClick(Sender: TObject);
begin
  inherited;
   ADO_receteAcikla.Delete;
end;

procedure TfrmHastaRecete.cxButtonKadirIlacAckEkleClick(Sender: TObject);
begin
  inherited;
  AckEkle(ReceteIlacAckEkle);
end;

procedure TfrmHastaRecete.cxButtonKadirIlacAckSilClick(Sender: TObject);
begin
  inherited;
  ADO_ReceteIlacAciklama.Delete;
end;

procedure TfrmHastaRecete.cxButtonKadirTaniEkleClick(Sender: TObject);
begin
  inherited;
  case TcxButtonKadir(Sender).Tag of
   0 : TaniEkle;
   1 : ADO_receteTani.Delete;
  end;
  ADO_receteTani.Active := False;
  ADO_receteTani.Active := True;


end;

procedure TfrmHastaRecete.cxGridReceteAciklamaDblClick(Sender: TObject);
begin
  inherited;
    datalar.ReceteAciklama.ackKod := ADO_receteAcikla.FieldByName('aciklamaTip').AsString;
    datalar.ReceteAciklama.ack := ADO_receteAcikla.FieldByName('aciklama').AsString;
    AckEkle(ReceteAckDuzenle);
end;

procedure TfrmHastaRecete.cxGridReceteDblClick(Sender: TObject);
var
 B : TBookmark;
begin
  inherited;
    datalar.YeniRecete.doktor := copy(ADO_Recete.FieldByName('doktor').AsString,1,4);
    datalar.YeniRecete.doktorAdi := copy(ADO_Recete.FieldByName('doktor').AsString,6,100);
    datalar.YeniRecete.protokolNo := ADO_Recete.FieldByName('ProtokolNo').AsString;
    datalar.YeniRecete.Tarih := ADO_Recete.FieldByName('tarih').AsString;
    datalar.YeniRecete.ReceteTuru := ADO_Recete.FieldByName('ReceteTur').AsString;
    datalar.YeniRecete.ReceteAltTuru := ADO_Recete.FieldByName('ReceteAltTur').AsString;

    if mrYes = ShowPopupForm('Re�ete D�zenle',ReceteDuzenle)
    then begin
         B := ADO_Recete.Bookmark;
         ADO_Recete.Edit;
         ADO_Recete.FieldByName('tarih').AsString := datalar.YeniRecete.Tarih;
         ADO_Recete.FieldByName('ReceteTur').AsString := datalar.YeniRecete.ReceteTuru;
         ADO_Recete.FieldByName('ReceteAltTur').AsString := datalar.YeniRecete.ReceteAltTuru;
         ADO_Recete.FieldByName('doktor').AsString := datalar.YeniRecete.doktor;//+'-'+datalar.YeniRecete.doktorAdi;
         ADO_Recete.FieldByName('protokolNo').AsString := datalar.YeniRecete.protokolNo;//+'-'+datalar.YeniRecete.doktorAdi;

         ADO_Recete.Post;
         ADO_Recete.Active := false;
         ADO_Recete.Active := True;
         ADO_Recete.GotoBookmark(B);
    end;
end;

procedure TfrmHastaRecete.cxGridReceteIlacAciklamaDblClick(Sender: TObject);
begin
  inherited;
    datalar.ReceteAciklama.ackKod := ADO_receteIlacAciklama.FieldByName('aciklamaTip').AsString;
    datalar.ReceteAciklama.ack := ADO_receteIlacAciklama.FieldByName('aciklama').AsString;
    AckEkle(ReceteIlacAckDuzenle);
end;

procedure TfrmHastaRecete.E1Click(Sender: TObject);
var
  ado : TADOQuery;
  sql : string;
begin

    case TMenuItem(sender).Tag of
    -1 : begin
          if PopupMenuEkleSil.PopupComponent = cxGrid11
          Then Begin
             ShowMessageSkin('Tani','','','info');
          End;
          if PopupMenuEkleSil.PopupComponent = cxGridReceteAciklama
          Then Begin
             ShowMessageSkin('A��klama','','','info');
          End;

         end;
    -2 : begin

         end;

   -21 : begin
           ilacEkle(ReceteIlacEkle);
         end;
   -22 : begin
           ilacEkle(ReceteIlacEkleIlacTedavi);
         end;

   -23 : begin
           if ADO_Recete.FieldByName('ereceteNo').AsString = '0000'
           Then
             if MrYes = ShowMessageSkin('�la� Re�eteden ��kart�l�yor Eminmisiniz ?','','','msg')
             Then Begin
                ado := TADOQuery.Create(nil);
                sql := 'delete from ReceteDetay where id = ' + ADO_RECETE_DETAY.fieldbyname('id').AsString;
                datalar.QueryExec(ado,sql);
                ADO_RECETE_DETAY.Active := false;
                ADO_RECETE_DETAY.Active := True;
                ado.Free;
             End Else Begin end
           Else ShowMessageSkin('E-Re�eteNo su olan Re�eteden �la� ��kart�lamaz','','','info');
         end;
   end;
end;

function TfrmHastaRecete.Init(Sender : TObject) : Boolean;
begin
  Result := False;
  if not inherited Init(Sender) then exit;
  db := Decode64(RegOku('OSGB_db_name'));
  ReceteGetir(_dosyaNO_,_gelisNO_);
  Result := True;
end;


procedure TfrmHastaRecete.FormCreate(Sender: TObject);
var
  index,i : integer;
  Ts,Ts1 : TStringList;
  List,List1 : TListeAc;
begin
 //cxYeni.Visible := false;
  inherited;
  ClientHeight := formYukseklik;
  ClientWidth := formGenislik;

  indexFieldName := 'id';
  TableName := _TableName_;
  cxPanel.Visible := false;
  cxTab.Width := 200;
  SayfaCaption('Re�ete','','','','');
  Olustur(self,_TableName_,'Re�ete',23);
  Menu := PopupMenu1;

  _HastaBilgileriniCaptionGoster_ := True;
 // cxGridReceteTani.PopupMenu := PopupMenuEkleSil;
 // cxGridReceteAciklama.PopupMenu := PopupMenuEkleSil;

end;

procedure TfrmHastaRecete.gridIlaclarDblClick(Sender: TObject);
begin
  inherited;

     case TcxGrid(Sender).tag  of
     0 : begin
           datalar.ReceteSatir.barkod := ADO_RECETE_DETAY.FieldByName('ilacKodu').AsString;
           datalar.ReceteSatir.barkodadi := ADO_RECETE_DETAY.FieldByName('ilacAdi').AsString;
           datalar.ReceteSatir.kutuadet := ADO_RECETE_DETAY.FieldByName('adet').AsInteger;
           datalar.ReceteSatir.peryot := ADO_RECETE_DETAY.FieldByName('kullanZamanUnit').AsInteger;
           datalar.ReceteSatir.peryotAdet := ADO_RECETE_DETAY.FieldByName('kullanimZaman').AsInteger;
           datalar.ReceteSatir.doz1 := ADO_RECETE_DETAY.FieldByName('kullanimAdet2').AsInteger;
           datalar.ReceteSatir.doz2 := ADO_RECETE_DETAY.FieldByName('kullanimAdet').AsInteger;
           datalar.ReceteSatir.kulyol := ADO_RECETE_DETAY.FieldByName('kullanimYolu').AsString;

           ilacEkle(ReceteIlacDuzenle);
         end;

     1 : begin

         end;


     end;

end;

end.
