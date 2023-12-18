import 'package:get/get.dart';

import '../modules/carta_aliran_pendidikan_mtq_addin/bindings/carta_aliran_pendidikan_mtq_addin_binding.dart';
import '../modules/carta_aliran_pendidikan_mtq_addin/views/carta_aliran_pendidikan_mtq_addin_view.dart';
import '../modules/faq/bindings/faq_binding.dart';
import '../modules/faq/views/faq_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/infaq_pay/bindings/infaq_pay_binding.dart';
import '../modules/infaq_pay/views/infaq_pay_view.dart';
import '../modules/jemaah_pengurusan/bindings/jemaah_pengurusan_binding.dart';
import '../modules/jemaah_pengurusan/views/jemaah_pengurusan_view.dart';
import '../modules/jom_zakat/bindings/jom_zakat_binding.dart';
import '../modules/jom_zakat/views/jom_zakat_view.dart';
import '../modules/karta_organisasi_ibu_pejabat/bindings/karta_organisasi_ibu_pejabat_binding.dart';
import '../modules/karta_organisasi_ibu_pejabat/views/karta_organisasi_ibu_pejabat_view.dart';
import '../modules/kedai_addin/bindings/kedai_addin_binding.dart';
import '../modules/kedai_addin/views/kedai_addin_view.dart';
import '../modules/kenali_tokoh/bindings/kenali_tokoh_binding.dart';
import '../modules/kenali_tokoh/views/kenali_tokoh_view.dart';
import '../modules/latar_belakang/bindings/latar_belakang_binding.dart';
import '../modules/latar_belakang/views/latar_belakang_view.dart';
import '../modules/maklumat_yuran/bindings/maklumat_yuran_binding.dart';
import '../modules/maklumat_yuran/views/maklumat_yuran_view.dart';
import '../modules/menengah_atas/bindings/menengah_atas_binding.dart';
import '../modules/menengah_atas/views/menengah_atas_view.dart';
import '../modules/menengah_rendah/bindings/menengah_rendah_binding.dart';
import '../modules/menengah_rendah/views/menengah_rendah_view.dart';
import '../modules/objektif/bindings/objektif_binding.dart';
import '../modules/objektif/views/objektif_view.dart';
import '../modules/sekolah_rendah/bindings/sekolah_rendah_binding.dart';
import '../modules/sekolah_rendah/views/sekolah_rendah_view.dart';
import '../modules/sekolah_rendah_tahfiz/bindings/sekolah_rendah_tahfiz_binding.dart';
import '../modules/sekolah_rendah_tahfiz/views/sekolah_rendah_tahfiz_view.dart';
import '../modules/syarat_kemasukan/bindings/syarat_kemasukan_binding.dart';
import '../modules/syarat_kemasukan/views/syarat_kemasukan_view.dart';
import '../modules/tabung_dana_harta_kekal/bindings/tabung_dana_harta_kekal_binding.dart';
import '../modules/tabung_dana_harta_kekal/views/tabung_dana_harta_kekal_view.dart';
import '../modules/tabung_pendidikan/bindings/tabung_pendidikan_binding.dart';
import '../modules/tabung_pendidikan/views/tabung_pendidikan_view.dart';
import '../modules/tabung_pengurusan/bindings/tabung_pengurusan_binding.dart';
import '../modules/tabung_pengurusan/views/tabung_pengurusan_view.dart';
import '../modules/tafsiran_logo/bindings/tafsiran_logo_binding.dart';
import '../modules/tafsiran_logo/views/tafsiran_logo_view.dart';
import '../modules/wakaf_al_quran/bindings/wakaf_al_quran_binding.dart';
import '../modules/wakaf_al_quran/views/wakaf_al_quran_view.dart';
import '../modules/wakaf_kenderaan/bindings/wakaf_kenderaan_binding.dart';
import '../modules/wakaf_kenderaan/views/wakaf_kenderaan_view.dart';
import '../modules/wakaf_pembangunan/bindings/wakaf_pembangunan_binding.dart';
import '../modules/wakaf_pembangunan/views/wakaf_pembangunan_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.KEDAI_ADDIN,
      page: () => const KedaiAddinView(),
      binding: KedaiAddinBinding(),
    ),
    GetPage(
      name: _Paths.FAQ,
      page: () => const FaqView(),
      binding: FaqBinding(),
    ),
    GetPage(
      name: _Paths.WAKAF_AL_QURAN,
      page: () => const WakafAlQuranView(),
      binding: WakafAlQuranBinding(),
    ),
    GetPage(
      name: _Paths.SEKOLAH_RENDAH_TAHFIZ,
      page: () => const SekolahRendahTahfizView(),
      binding: SekolahRendahTahfizBinding(),
    ),
    GetPage(
      name: _Paths.INFAQ_PAY,
      page: () => const InfaqPayView(),
      binding: InfaqPayBinding(),
    ),
    GetPage(
      name: _Paths.WAKAF_KENDERAAN,
      page: () => const WakafKenderaanView(),
      binding: WakafKenderaanBinding(),
    ),
    GetPage(
      name: _Paths.WAKAF_PEMBANGUNAN,
      page: () => const WakafPembangunanView(),
      binding: WakafPembangunanBinding(),
    ),
    GetPage(
      name: _Paths.TABUNG_PENDIDIKAN,
      page: () => const TabungPendidikanView(),
      binding: TabungPendidikanBinding(),
    ),
    GetPage(
      name: _Paths.TABUNG_PENGURUSAN,
      page: () => const TabungPengurusanView(),
      binding: TabungPengurusanBinding(),
    ),
    GetPage(
      name: _Paths.JOM_ZAKAT,
      page: () => const JomZakatView(),
      binding: JomZakatBinding(),
    ),
    GetPage(
      name: _Paths.TABUNG_DANA_HARTA_KEKAL,
      page: () => const TabungDanaHartaKekalView(),
      binding: TabungDanaHartaKekalBinding(),
    ),
    GetPage(
      name: _Paths.KARTA_ORGANISASI_IBU_PEJABAT,
      page: () => const KartaOrganisasiIbuPejabatView(),
      binding: KartaOrganisasiIbuPejabatBinding(),
    ),
    GetPage(
      name: _Paths.MAKLUMAT_YURAN,
      page: () => const MaklumatYuranView(),
      binding: MaklumatYuranBinding(),
    ),
    GetPage(
      name: _Paths.LATAR_BELAKANG,
      page: () => const LatarBelakangView(),
      binding: LatarBelakangBinding(),
    ),
    GetPage(
      name: _Paths.CARTA_ALIRAN_PENDIDIKAN_MTQ_ADDIN,
      page: () => const CartaAliranPendidikanMtqAddinView(),
      binding: CartaAliranPendidikanMtqAddinBinding(),
    ),
    GetPage(
      name: _Paths.KENALI_TOKOH,
      page: () => const KenaliTokohView(),
      binding: KenaliTokohBinding(),
    ),
    GetPage(
      name: _Paths.OBJEKTIF,
      page: () => const ObjektifView(),
      binding: ObjektifBinding(),
    ),
    GetPage(
      name: _Paths.JEMAAH_PENGURUSAN,
      page: () => const JemaahPengurusanView(),
      binding: JemaahPengurusanBinding(),
    ),
    GetPage(
      name: _Paths.TAFSIRAN_LOGO,
      page: () => const TafsiranLogoView(),
      binding: TafsiranLogoBinding(),
    ),
    GetPage(
      name: _Paths.SYARAT_KEMASUKAN,
      page: () => const SyaratKemasukanView(),
      binding: SyaratKemasukanBinding(),
    ),
    GetPage(
      name: _Paths.SEKOLAH_RENDAH,
      page: () => const SekolahRendahView(),
      binding: SekolahRendahBinding(),
    ),
    GetPage(
      name: _Paths.MENENGAH_RENDAH,
      page: () => const MenengahRendahView(),
      binding: MenengahRendahBinding(),
    ),
    GetPage(
      name: _Paths.MENENGAH_ATAS,
      page: () => const MenengahAtasView(),
      binding: MenengahAtasBinding(),
    ),
  ];
}
