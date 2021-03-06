unit GetFormClass;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Consts,
  Dialogs, ADODB, registry, ComCtrls, StdCtrls, db, ExtCtrls,Kadir,KadirType,
  ShellApi, forms,GirisUnit,cxPc,strUtils;


function FormClass(formId : integer) : TComponentClass;
function FormINIT(FormTag : Integer;MidiForm : TForm;
                  Values : TGirisFormRecord ; Value : String = '';
                  Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir ;
                  izinPrm : string = '') : TGirisForm;overload;

function FormINIT(FormTag : Integer;MidiForm : TForm;
                  Value : String = '';
                  Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir ;
                  izinPrm : string = '') : TGirisForm;overload;

function FormINIT(FormTag : Integer;Value : TGirisFormRecord;ik : izinKontrol = ikHayir ;
                  izinPrm : string = '') : TGirisForm;overload;

function FormINIT(MenuID : Integer) : Boolean;overload;


function FormINITTForm(FormTag : Integer) : TForm;
//function FormINIT(FormTag : Integer; Hasta : THasta ; Dialog : showDialog = OFShowModal) : Boolean;overload;

function FormClassType(formId : integer) : TComponent;
function FormCaption(formId : integer) : String;
function FormAltCaption(formId : integer) : String;
function FormTabImageIndex(formId : integer) : integer;
function PopupFormCaption(islemTag : integer ; var TabCaption : string) : String;

implementation

uses message,Data_Modul,AnaUnit,message_y,popupForm,rapor,TedaviKart,Son6AylikTetkikSonuc,
             HastaRecete,HastailacTedavi,sifreDegis,HastaTetkikEkle,
             KanTetkikleriTakip,KanTetkikleriDegerlendir, Receteler,
             HastaKart,FirmaKart,
             HastaListe,TeleEKG,
             Tnm_UserSettings,HastaAsiKarti,HastaTaniKart,
             KurumLogin,
             MedulaKurumSifreDegis,donemSonlandirma,TahlilTakipListesi,
             TahlilSonucGir,Tnm_Doktor,LabTestAyarlari,
             TedaviListPivot,PopupDBGridForm,Tnm_Ilaclar;




function FormTabImageIndex(formId : integer) : integer;
begin
   case formId of
     TagfrmHastaKart : Result := 39;
     TagfrmFirmaKart : Result := -1;
     TagfrmTedaviBilgisi : Result := 2;
     TagfrmSaglikNetOnline : Result := 3;
     TagfrmHastaRecete : Result := 4;
     TagfrmHastaListe : Result := 6;
     TagfrmTeleEkg : Result := 7;
     TagfrmSeansDagilimi : Result := 9;
     TagfrmFatura : Result := 38;
     TagfrmTakipBilgisiOku : Result := 11;
     TagfrmUsers : Result := 12;
     TagfrmHastaIlacTedavi : Result := 13;
     TagfrmTakipNo : Result := 14;
     TagfrmAsiKarti : Result := 15;
     TagfrmHastaDiyalizIzlem : Result := 20;
     TagfrmDamarIzi : Result := 66;
     TagfrmKurumBilgi : Result := 87;
     TagKurumSifreDegisForm : Result := -1;
     TagfrmDonemSonlandir : Result := -1;
     TagfrmGonderilmis : Result := -1;
     TagfrmTahliltakip : Result := -1;
     TagfrmTahlilsonucGir : Result := -1;
     TagfrmDoktorlar : Result := -1;
     TagfrmHemsireler : Result := -1;
     TagfrmMakina : Result := 89;
     TagfrmTestAyarlari : Result := -1;
     TagfrmKiloOrder : Result := -1;
     TagfrmHizliKayit : Result := -1;
     TagfrmIlaclar : Result := -1;
     TagfrmReceteler : Result := -1;
  end;
end;

function PopupFormCaption(islemTag : integer ; var TabCaption : string) : String;
begin
   case islemTag of
     gdgelisAc :
         Begin
           TabCaption := 'Geli� A�';
           Result := 'GEL�� ��LEMLER�';
         End;

     gdgelisDuzenle :
         Begin
           TabCaption := 'Geli� D�zenle';
           Result := 'GEL�� ��LEMLER�';
         End;
     ReceteIlacEkle,ReceteIlacDuzenle :
         Begin
           TabCaption := ifThen(islemTag = ReceteIlacEkle,'�la� Ekle','�la� D�zenle');
           Result := 'RE�ETE ��LEMLER�';
         End;
    SeansInsert :
         Begin
           TabCaption := 'Seans Olu�tur';
           Result := 'SEANS ��LEMLER�';
         End;
    SeansDoktorUpdate :
         begin
           TabCaption := 'Seans Doktor D�zenle';
           Result := 'SEANS ��LEMLER�';
         end;
    SeansTarihiUpdate :
         begin
           TabCaption := 'Seans Tarihi D�zenle';
           Result := 'SEANS ��LEMLER�';
         end;
    PrgSifre  :
         begin
           TabCaption := '�ifre De�i�tir';
           Result := 'AYARLAR';
         end;
   end;

end;

function FormCaption(formId : integer) : String;
var
  sql : string;
  ado : TADOQuery;
begin
   sql := 'select formCaption from FormCaption where formTag = ' + inttostr(formId);
   ado := TADOQuery.Create(nil);
   datalar.QuerySelect(ado,sql);
   if not ado.Eof then
     FormCaption := ado.Fields[0].AsString;
  ado.Free;
end;

function FormAltCaption(formId : integer) : String;
var
  sql : string;
  ado : TADOQuery;
begin
   sql := 'select formAltCaption from FormCaption where formTag = ' + inttostr(formId);
   ado := TADOQuery.Create(nil);
   datalar.QuerySelect(ado,sql);
   if not ado.Eof then
     FormAltCaption := ado.Fields[0].AsString;

  ado.free;
end;

function FormClass(formId : integer) : TComponentClass;
begin
  case formId of
   TagfrmHastaKart : Result := TfrmHastaKart;
   TagfrmFirmaKart : Result := TfrmFirmaKart;
   TagfrmPopupDBGridForm,TagfrmBolum,TagfrmBirim : Result := TfrmPopupDBGridForm;

   TagfrmTedaviBilgisi : Result := TfrmTedaviBilgisi;
   TagfrmHastaRecete : Result := TfrmHastaRecete;
   TagfrmHastaListe : Result := TfrmHastaListe;
   TagfrmTeleEkg : Result := TfrmTeleEKG;
   TagfrmUsers : Result := TfrmUsers;
   TagfrmHastaTetkikEkle : Result := TfrmHastaTetkikEkle;
   TagfrmAsiKarti : Result := TfrmAsiKarti;
   TagfrmTaniKarti : Result := TfrmTaniKart;
   TagfrmKanTetkikTakipDegerlendir : Result := TfrmKanTetkikTakipDegerlendir;
   TagfrmKurumBilgi : Result := TfrmKurumBilgi;
   TagKurumSifreDegisForm : Result := TKurumSifreDegisForm;
   TagfrmDonemSonlandir : Result := TfrmDonemSonlandir;
   TagfrmTahliltakip : Result := TfrmTahliltakip;
   TagfrmTahlilsonucGir : Result := TfrmTahlilsonucGir;
   TagfrmDoktorlar : Result := TfrmDoktorlar;
   TagfrmTestAyarlari : Result := TfrmTestAyarlari;
   TagfrmTedaviListP : Result := TfrmTedaviListP;
   TagfrmIlaclar,TagfrmIlacAnaGrup,TagfrmIlacEtkenMadde : Result := TfrmIlaclar;
   TagfrmSon6AylikTetkikSonuc : Result := TfrmSon6AylikTetkikSonuc;
   TagfrmReceteler : Result := TfrmReceteler;
  end;
end;

function FormClassType(formId : integer) : TComponent;
begin
  case formId of
   TagfrmHastaKart : Result := frmHastaKart;
   TagfrmFirmaKart : Result := frmFirmaKart;
   TagfrmPopupDBGridForm,TagfrmBolum,TagfrmBirim : Result := frmPopupDBGridForm;

   TagfrmTedaviBilgisi : Result := frmTedaviBilgisi;
   TagfrmHastaIlacTedavi : Result := frmHastaIlacTedavi;
   TagfrmHastaRecete : Result := frmHastaRecete;
   TagfrmHastaListe : Result := frmHastaListe;
   TagfrmTeleEkg : Result := frmTeleEKG;
   TagfrmUsers : Result := frmUsers;
   TagfrmHastaTetkikEkle : Result := frmHastaTetkikEkle;
   TagfrmAsiKarti : Result := frmAsiKarti;
   TagfrmTaniKarti : Result := frmTaniKart;
   TagfrmKanTetkikTakipDegerlendir : Result := frmKanTetkikTakipDegerlendir;
   TagfrmKurumBilgi : Result := frmKurumBilgi;
   TagKurumSifreDegisForm : Result := KurumSifreDegisForm;
   TagfrmDonemSonlandir : Result := frmDonemSonlandir;
   TagfrmTahliltakip : Result := frmTahliltakip;
   TagfrmTahlilsonucGir : Result := frmTahlilsonucGir;
   TagfrmDoktorlar : Result := frmDoktorlar;
   TagfrmTestAyarlari : Result := frmTestAyarlari;
   TagfrmTedaviListP : Result := frmTedaviListP;
   TagfrmIlaclar,TagfrmIlacAnaGrup,TagfrmIlacEtkenMadde  : Result := frmIlaclar;
   TagfrmSon6AylikTetkikSonuc : Result := frmSon6AylikTetkikSonuc;
   TagfrmReceteler : Result := frmReceteler;

  end;
end;


function FormINIT(FormTag : Integer;MidiForm : TForm;
                  Values : TGirisFormRecord ; Value : String = '';
                  Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir;
                  izinPrm : string = '') : TGirisForm;
var
  f : Tcomponent;
  Form : TGirisForm;
begin
   izinPrm := ifThen(izinPrm = '',FormAltCaption(FormTag),izinPrm);
   if ik = ikEvet
   then
   if UserRight(FormCaption(FormTag), izinPrm) = False
   then begin
       UserRightInsert(FormCaption(FormTag),izinPrm,datalar.username);
       ShowMessageSkin(FormCaption(FormTag),izinPrm + ' ��lemi ��in Yetkiniz Bulunmamaktad�r !','','info');
       Tab.Free;
       result := nil;
       exit;
   end;

   case FormTag of
      TagfrmHastaKart : frmHastaKart := TfrmHastaKart.Create(Tab);
      TagfrmFirmaKart : frmFirmaKart := TfrmFirmaKart.Create(Tab);

      TagfrmHastaListe : frmHastaListe := TfrmHastaListe.Create(Tab);
      TagfrmTeleEkg : frmTeleEKG := TfrmTeleEKG.Create(Tab);
      TagfrmDonemSonlandir : frmDonemSonlandir := TfrmDonemSonlandir.Create(Tab);
      TagfrmTahliltakip : frmTahliltakip := TfrmTahliltakip.Create(Tab);
      TagfrmSon6AylikTetkikSonuc : frmSon6AylikTetkikSonuc := TfrmSon6AylikTetkikSonuc.Create(Tab);
      TagfrmReceteler : frmReceteler := TfrmReceteler.Create(Tab);
     else
      result := nil;
   end;


   Form := TGirisForm(FormClassType(FormTag));
   Tab.Caption := FormAltCaption(FormTag);
   TGirisForm(Form).cxTab.Tabs[0].Caption := Tab.Caption;
   TGirisForm(Form).cxTab.Tabs[0].ImageIndex := FormTabImageIndex(FormTag);
   if Tab = nil
   then begin
    TgirisForm(Form).BorderStyle := bsToolWindow;
    TgirisForm(Form).Align := alNone;
   end
   else
   begin
    TgirisForm(Form).BorderStyle := bsNone;
    TgirisForm(Form).Align := alClient;
   end;

   TGirisForm(Form)._dosyaNO_ := Values.F_dosyaNO_;//datalar.Bilgi.dosyaNo;
   TGirisForm(Form)._gelisNO_ := Values.F_gelisNO_;//datalar.Bilgi.gelisNo;
   TGirisForm(Form)._provizyonTarihi_ := Values.F_provizyonTarihi_;
   TGirisForm(Form)._HastaAdSoyad_ := Values.F_HastaAdSoyad_;
   TGirisForm(Form)._TakipNo_ := Values.F_TakipNo_;
   TGirisForm(Form)._BasvuruNo_ := Values.F_BasvuruNo_;
   TGirisForm(Form)._Doktor_ := Values.F_Doktor_;
   TGirisForm(Form)._Makina_ := Values.F_Makina_;
   TGirisForm(Form)._Seans_ := Values.F_Seans_;
   TGirisForm(Form)._TC_ := Values.F_TC_;
   TGirisForm(Form)._Yupass_ := Values.F_Yupass_;
   TGirisForm(Form)._DevKurum_ := Values.F_DevKurum_;
   TGirisForm(Form)._SigortaliTur_ := Values.F_SigortaliTur_;
   TGirisForm(Form)._SeansSira_ := Values.F_SeansSira_;
   TGirisForm(Form).Tag := FormTag;
   TgirisForm(Form).Parent := Tab;
   TGirisForm(Form).BringToFront;
   TGirisForm(Form).Init(Form);
   result := TGirisForm(Form);
end;


function FormINIT(FormTag : Integer;MidiForm : TForm;Value : String = '';
                   Tab : TcxTabSheet = nil;ik : izinKontrol = ikHayir;
                   izinPrm : string = '') : TGirisForm;
var
  f : Tcomponent;
  Form : TGirisForm;
begin
   izinPrm := ifThen(izinPrm = '',FormAltCaption(FormTag),izinPrm);
   if ik = ikEvet
   then
   if UserRight(FormCaption(FormTag), izinPrm) = False
   then begin
       UserRightInsert(FormCaption(FormTag),izinPrm,datalar.username);
       ShowMessageSkin(FormCaption(FormTag),izinPrm + ' ��lemi ��in Yetkiniz Bulunmamaktad�r !','','info');
       Tab.Free;
       result := nil;
       exit;
   end;

   case FormTag of
      TagfrmHastaKart : frmHastaKart := TfrmHastaKart.Create(Tab);
      TagfrmFirmaKart : frmFirmaKart := TfrmFirmaKart.Create(Tab);

      TagfrmHastaListe : frmHastaListe := TfrmHastaListe.Create(Tab);
      TagfrmTeleEkg : frmTeleEKG := TfrmTeleEKG.Create(Tab);
      TagfrmDonemSonlandir : frmDonemSonlandir := TfrmDonemSonlandir.Create(Tab);
      TagfrmTahliltakip : frmTahliltakip := TfrmTahliltakip.Create(Tab);
      TagfrmTedaviListP : frmTedaviListP := TfrmTedaviListP.Create(Tab);
      TagfrmSon6AylikTetkikSonuc : frmSon6AylikTetkikSonuc := TfrmSon6AylikTetkikSonuc.Create(Tab);
      TagfrmReceteler : frmReceteler := TfrmReceteler.Create(Tab);
     else
      result := nil;
   end;


   Form := TGirisForm(FormClassType(FormTag));
   Tab.Caption := FormAltCaption(FormTag);
   TGirisForm(Form).cxTab.Tabs[0].Caption := Tab.Caption;
   TGirisForm(Form).cxTab.Tabs[0].ImageIndex := FormTabImageIndex(FormTag);
   if Tab = nil
   then begin
    TgirisForm(Form).BorderStyle := bsToolWindow;
    TgirisForm(Form).Align := alNone;
   end
   else
   begin
    TgirisForm(Form).BorderStyle := bsNone;
    TgirisForm(Form).Align := alClient;
   end;

   TGirisForm(Form)._dosyaNO_ := Value;
   TGirisForm(Form).Tag := FormTag;
   TgirisForm(Form).Parent := Tab;
   TGirisForm(Form).BringToFront;
   TGirisForm(Form).Init(Form);
   result := TGirisForm(Form);
end;

function FormINIT(FormTag : Integer; Value : TGirisFormRecord;ik : izinKontrol = ikHayir;izinPrm : string = '') : TGirisForm;
var
  Form : TGirisForm;
  FormC : TComponentClass;
begin
   izinPrm := ifThen(izinPrm = '',FormAltCaption(FormTag),izinPrm);
   if ik = ikEvet
   then
   if UserRight(FormCaption(FormTag), izinPrm) = False
   then begin
       UserRightInsert(FormCaption(FormTag),izinPrm,datalar.username);
       ShowMessageSkin(FormCaption(FormTag),izinPrm + ' ��lemi ��in Yetkiniz Bulunmamaktad�r !','','info');
       result := nil;
       exit;
   end;

  case FormTag of
    TagfrmFirmaKart : Application.CreateForm(TfrmFirmaKart,frmFirmaKart);
    TagfrmPopupDBGridForm,TagfrmBolum,TagfrmBirim: Application.CreateForm(TfrmPopupDBGridForm , frmPopupDBGridForm);
    TagfrmDoktorlar :  Application.CreateForm(TfrmDoktorlar, frmDoktorlar);
    TagfrmKurumBilgi : Application.CreateForm(TfrmKurumBilgi, frmKurumBilgi);
    TagfrmReceteler : Application.CreateForm(TfrmReceteler, frmReceteler);

    TagfrmHastaRecete : Application.CreateForm(TfrmHastaRecete,frmHastaRecete);
    TagfrmTedaviBilgisi : Application.CreateForm(TfrmTedaviBilgisi,frmTedaviBilgisi);
    TagfrmHastaIlacTedavi : Application.CreateForm(TfrmHastaIlacTedavi,frmHastaIlacTedavi);
    TagfrmTeleEkg : Application.CreateForm(TfrmTeleEKG, frmTeleEKG);
    TagfrmUsers : Application.CreateForm(TfrmUsers, frmUsers);
    TagfrmHastaTetkikEkle : Application.CreateForm(TfrmHastaTetkikEkle, frmHastaTetkikEkle);
    TagfrmAsiKarti : Application.CreateForm(TfrmAsiKarti, frmAsiKarti);
    TagfrmTaniKarti : Application.CreateForm(TfrmTaniKart, frmTaniKart);
    TagfrmKanTetkikTakipDegerlendir : Application.CreateForm(TfrmKanTetkikTakipDegerlendir, frmKanTetkikTakipDegerlendir);

    TagKurumSifreDegisForm : Application.CreateForm(TKurumSifreDegisForm, KurumSifreDegisForm);
    TagfrmTahlilsonucGir : Application.CreateForm(TfrmTahlilsonucGir, frmTahlilsonucGir);

    TagfrmTestAyarlari : Application.CreateForm(TfrmTestAyarlari, frmTestAyarlari);
    TagfrmIlaclar,TagfrmIlacAnaGrup,TagfrmIlacEtkenMadde : Application.CreateForm(TfrmIlaclar , frmIlaclar);
    TagfrmSon6AylikTetkikSonuc : Application.CreateForm(TfrmSon6AylikTetkikSonuc , frmSon6AylikTetkikSonuc);

    else
      result := nil;
   end;

  Form := TGirisForm(FormClassType(FormTag));

  TGirisForm(Form)._dosyaNO_ := Value.F_dosyaNO_;//datalar.Bilgi.dosyaNo;
  TGirisForm(Form)._gelisNO_ := Value.F_gelisNO_;//datalar.Bilgi.gelisNo;
  TGirisForm(Form)._provizyonTarihi_ := Value.F_provizyonTarihi_;
  TGirisForm(Form)._HastaAdSoyad_ := Value.F_HastaAdSoyad_;
  TGirisForm(Form)._TakipNo_ := Value.F_TakipNo_;
  TGirisForm(Form)._BasvuruNo_ := Value.F_BasvuruNo_;
  TGirisForm(Form)._Doktor_ := Value.F_Doktor_;
  TGirisForm(Form)._Makina_ := Value.F_Makina_;
  TGirisForm(Form)._Seans_ := Value.F_Seans_;
  TGirisForm(Form)._TC_ := Value.F_TC_;
  TGirisForm(Form)._Yupass_ := Value.F_Yupass_;
  TGirisForm(Form)._DevKurum_ := Value.F_DevKurum_;
  TGirisForm(Form)._SigortaliTur_ := Value.F_SigortaliTur_;
  TGirisForm(Form)._SeansSira_ := Value.F_SeansSira_;
  TgirisForm(Form).Caption := FormCaption(FormTag) + ' - ' + FormAltCaption(FormTag);
  if ik = ikEvet
   then
    TGirisForm(Form).cxTab.Tabs[0].Caption := izinPrm
   else begin
    if Value.F_HastaAdSoyad_ <> '' then
      TGirisForm(Form).cxTab.Tabs[0].Caption := Value.F_HastaAdSoyad_
    else
      TGirisForm(Form).cxTab.Tabs[0].Caption := izinPrm;

   end;
  TGirisForm(Form).cxTab.Tabs[0].ImageIndex := FormTabImageIndex(FormTag);

  TGirisForm(Form).Tag := FormTag;
  TGirisForm(Form).Init(Form);
  result := TGirisForm(Form);

end;


function FormINIT(MenuID : Integer) : Boolean;overload;
begin
  MenuIDRun(MenuID);
end;


function FormINITTForm(FormTag : Integer) : TForm;
var
  Form : TComponent;
  FormC : TComponentClass;
begin
  Form := FormClassType(FormTag);
  Application.CreateForm(FormClass(FormTag), Form);
  Form.Tag := FormTag;
  case FormTag of
    TagfrmSaglikNetOnline : begin
     end
     else
      result := nil;
   end;
   result := TForm(Form);
end;


end.
