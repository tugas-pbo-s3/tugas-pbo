part of '_index.dart';

abstract class Ctrl {
  static AdminHomeCtrl get adminHome => AdminHomeCtrl();
  static AdminRokCtrl get adminKidsShoesList => AdminRokCtrl();
  static AdminRokInputCtrl get adminKidsShoesInput => AdminRokInputCtrl();
  static AdminKebayaCtrl get adminMenShoesList => AdminKebayaCtrl();
  static AdminKebayaInputCtrl get adminMenShoesInput => AdminKebayaInputCtrl();
  static AdminKelomCtrl get adminWomenShoesList => AdminKelomCtrl();
  static AdminKelomInpurCtrl get adminWomenShoesInput => AdminKelomInpurCtrl();
  static AdminCategoryListCtrl get adminCategoryList => AdminCategoryListCtrl();
  static ProductListCtrl get productList => ProductListCtrl();
  static ProductDetailCtrl get productDetail => ProductDetailCtrl();
  static ProductInputCtrl get productInput => ProductInputCtrl();
  static ProductEditCtrl get productEdit => ProductEditCtrl();
  static LoginCtrl get login => LoginCtrl();
  static RegisterCtrl get register => RegisterCtrl();
  static HomeCtrl get home => HomeCtrl();
  static CartCtrl get keranjang => CartCtrl();
  static ProfileCtrl get profile => ProfileCtrl();

  static KelomCtrl get woman => KelomCtrl();
  static KelomDetailCtrl get womenDetail => KelomDetailCtrl();
  static RokCtrl get rok => RokCtrl();
  static RokDetailCtrl get rokDetail => RokDetailCtrl();
  static KebayaCtrl get kebaya => KebayaCtrl();
  static KebayaDetailCtrl get kebayaDetail => KebayaDetailCtrl();
}
