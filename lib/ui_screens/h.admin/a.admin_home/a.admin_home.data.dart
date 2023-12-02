part of '_index.dart';

class AdminHomeData {
  final rxTitle = 'Beranda Admin'.inj();

  final rxInt = 0.inj();

  final sideBarCtrl = SidebarXController(selectedIndex: 0, extended: true);

  final scaffoldHome = GlobalKey<ScaffoldState>();

  final rxIsLimit = Prov.kelom.st.rxIsLimit;

  final rxWomenShoes = Prov.kelom.st.rxProductList;
  final rxWomenShoesLoaderWithoutLimit = Prov.kelom.st.rxLoadMoreWithoutLimit;

  final rxMenShoes = Prov.kebaya.st.rxProductList;
  final rxMenShoesLoaderWithoutLimit = Prov.kebaya.st.rxLoadMoreWithoutLimit;

  final rxKidsShoes = Prov.rok.st.rxProductList;
  final rxKidsShoesLoaderWithoutLimit = Prov.rok.st.rxLoadMoreWithoutLimit;
}
