part of '_index.dart';

class HomeData {
  final rxTitle = 'Home'.inj();

  final rxInt = 0.inj();

  final rxUser = Prov.auth.st.rxUser;

  var lisxtPage = <Widget>[
    const ProductListView(),
    const CartView(),
    const ProfileViewPhone(),
  ];

  final rxCurrentIndex = 0.inj();
}
