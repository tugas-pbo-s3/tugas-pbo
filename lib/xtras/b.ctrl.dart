part of '_index.dart';

abstract class Ctrl {
  static ProductListCtrl get productList => ProductListCtrl();
  static ProductDetailCtrl get productDetail => ProductDetailCtrl();
  static ProductInputCtrl get productInput => ProductInputCtrl();
  static ProductEditCtrl get productEdit => ProductEditCtrl();
  static LoginCtrl get login => LoginCtrl();
  static RegisterCtrl get register => RegisterCtrl();
  static HomeCtrl get home => HomeCtrl();
  static ManCtrl get man => ManCtrl();
  static WomanCtrl get woman => WomanCtrl();
  static KidsCtrl get kids => KidsCtrl();
  static AllCtrl get all => AllCtrl();
  static CartCtrl get cart => CartCtrl();
  static ProfileCtrl get profile => ProfileCtrl();
}
