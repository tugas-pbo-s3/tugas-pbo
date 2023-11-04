part of '_index.dart';

class AdminProductListData {
  final rxTitle = 'AdminProductList'.inj();

  final rxInt = 0.inj();

  final limit = Prov.product.st.limit;

  final rxIsEnd = Prov.product.st.rxIsEnd;

  final rxSelectedId = Prov.product.st.rxSelectedId;

  final rxProductList = Prov.product.st.rxProductList;

  final rxLoadMore = Prov.product.st.rxLoadMore;
}
