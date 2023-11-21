part of '_index.dart';

class AdminHomeData {
  final rxTitle = 'AdminHome'.inj();

  final rxInt = 0.inj();

  final sideBarCtrl = SidebarXController(selectedIndex: 0, extended: true);

  final scaffoldHome = GlobalKey<ScaffoldState>();

  final rxIsLimit = Prov.women.st.rxIsLimit;

  final rxWomenShoes = Prov.women.st.rxProductList;
  final rxWomenShoesLoaderWithoutLimit = Prov.women.st.rxLoadMoreWithoutLimit;

  final rxMenShoes = Prov.man.st.rxProductList;
  final rxMenShoesLoaderWithoutLimit = Prov.man.st.rxLoadMoreWithoutLimit;

  final rxKidsShoes = Prov.kids.st.rxProductList;
  final rxKidsShoesLoaderWithoutLimit = Prov.kids.st.rxLoadMoreWithoutLimit;
}
