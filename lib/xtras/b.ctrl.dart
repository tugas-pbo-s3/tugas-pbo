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
  static MenCtrl get man => MenCtrl();
  static WomenCtrl get woman => WomenCtrl();
  static KidsCtrl get kids => KidsCtrl();
  static AllCtrl get all => AllCtrl();

  static CartCtrl get cart => CartCtrl();
  static ProfileCtrl get profile => ProfileCtrl();
  static WomenDetailCtrl get womenDetail => WomenDetailCtrl();
  static ManDetailCtrl get manDetail => ManDetailCtrl();
  static KidsDetailCtrl get kidsDetail => KidsDetailCtrl();
}
