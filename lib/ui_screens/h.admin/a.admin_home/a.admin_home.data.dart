part of '_index.dart';

class AdminHomeData {
  final rxTitle = 'AdminHome'.inj();

  final rxInt = 0.inj();

  final sideBarCtrl = SidebarXController(selectedIndex: 0, extended: true);

  final scaffoldHome = GlobalKey<ScaffoldState>();

  // final rxIsInputWomenShoes = RM.inject(() => false);
}
