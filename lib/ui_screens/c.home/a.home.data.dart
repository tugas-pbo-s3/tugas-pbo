part of '_index.dart';

class HomeData {
  final rxTitle = 'Home'.inj();

  final rxInt = 0.inj();

  final rxUser = Prov.auth.st.rxUser;

  var listPage = <Widget>[
    const ProductListView(),
    const CartView(),
    const ProfileView(),
  ];

  final rxCurrentIndex = 0.inj();
}
