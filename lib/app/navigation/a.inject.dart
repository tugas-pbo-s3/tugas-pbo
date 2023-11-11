part of '_index.dart';

final nav = RM.injectNavigator(
  initialLocation: Routes.home,
  // initialLocation: Prov.auth.st.rxUser.st == null ? Routes.login : Routes.home,
  // initialLocation: Routes.adminProductList,
  // initialLocation: Routes.adminCategoryList,
  routes: RouteMap.data,
  onNavigate: (data) => OnNavigate.action(data),
  onNavigateBack: (data) => OnNavigateBack.action(data),
  shouldUseCupertinoPage: true,
  navigatorObservers: [],
);
