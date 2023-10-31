part of '_index.dart';

abstract class Ctrl {
  static CobaSatuCtrl get cobaSatu => CobaSatuCtrl();
  static CobaDuaCtrl get cobaDua => CobaDuaCtrl();
  static CobaTigaCtrl get cobaTiga => CobaTigaCtrl();
  static ProductListCtrl get productList => ProductListCtrl();
  static ProductDetailCtrl get productDetail => ProductDetailCtrl();
  static ProductInputCtrl get productInput => ProductInputCtrl();
  static ProductEditCtrl get productEdit => ProductEditCtrl();
  static LoginCtrl get login => LoginCtrl();
}
