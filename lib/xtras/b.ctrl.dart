part of '_index.dart';

abstract class Ctrl {
  static AdminProductListCtrl get adminProductList => AdminProductListCtrl();
  static AdminProductDetailCtrl get adminProductDetail => AdminProductDetailCtrl();
  static AdminProductInputCtrl get adminProductInput => AdminProductInputCtrl();
  static AdminProductEditCtrl get adminProductEdit => AdminProductEditCtrl();
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
  static SearchCtrl get search => SearchCtrl();
  static WomenDetailCtrl get womenDetail => WomenDetailCtrl();
  static ManDetailCtrl get manDetail => ManDetailCtrl();
}
