part of '_index.dart';

abstract class Ctrl {
  static AdminHomeCtrl get adminHome => AdminHomeCtrl();
  static AdminKidsShoesListCtrl get adminKidsShoesList => AdminKidsShoesListCtrl();
  static AdminKidsShoesInputCtrl get adminKidsShoesInput => AdminKidsShoesInputCtrl();
  static AdminMenShoesListCtrl get adminMenShoesList => AdminMenShoesListCtrl();
  static AdminMenShoesInputCtrl get adminMenShoesInput => AdminMenShoesInputCtrl();
  static AdminWomenShoesListCtrl get adminWomenShoesList => AdminWomenShoesListCtrl();
  static AdminWomenShoesInputCtrl get adminWomenShoesInput => AdminWomenShoesInputCtrl();
  static AdminCategoryListCtrl get adminCategoryList => AdminCategoryListCtrl();
  static ProductListCtrl get productList => ProductListCtrl();
  static ProductDetailCtrl get productDetail => ProductDetailCtrl();
  static ProductInputCtrl get productInput => ProductInputCtrl();
  static ProductEditCtrl get productEdit => ProductEditCtrl();
  static LoginCtrl get login => LoginCtrl();
  static RegisterCtrl get register => RegisterCtrl();
  static HomeCtrl get home => HomeCtrl();
  static CartCtrl get cart => CartCtrl();
  static ProfileCtrl get profile => ProfileCtrl();

  static KelomCtrl get woman => KelomCtrl();
  static KelomDetailCtrl get womenDetail => KelomDetailCtrl();
  static RokCtrl get rok => RokCtrl();
  static RokDetailCtrl get rokDetail => RokDetailCtrl();
  static KebayaCtrl get kebaya => KebayaCtrl();
  static KebayaDetailCtrl get kebayaDetail => KebayaDetailCtrl();
}
