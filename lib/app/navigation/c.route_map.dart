part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.root: (RouteData data) => const HomeView(),
    //* master -- ----- ----- ----- ----- -----
    Routes.adminHome: (RouteData data) => const AdminHomeView(),

    Routes.adminWomenShoesList: (RouteData data) => const AdminKelomView(),
    Routes.adminWomenShoesInput: (RouteData data) => const AdminKelomInputView(),

    Routes.adminMenShoesList: (RouteData data) => const AdminKebayaView(),
    Routes.adminMenShoesInput: (RouteData data) => const AdminKebayaInputView(),

    Routes.adminKidsShoesList: (RouteData data) => const AdminRokView(),
    Routes.adminKidsShoesInput: (RouteData data) => const AdminRokInputView(),

    Routes.adminCategoryList: (RouteData data) => const AdminCategoryListView(),

    Routes.productList: (RouteData data) => const ProductListView(),
    Routes.productDetail: (RouteData data) => const ProductDetailView(),
    Routes.productInput: (RouteData data) => const ProductInputView(),
    Routes.productEdit: (RouteData data) => const ProductEditView(),

    Routes.login: (RouteData data) => const LoginView(),
    Routes.register: (RouteData data) => const RegisterView(),

    Routes.home: (RouteData data) => const HomeView(),

    Routes.profile: (RouteData data) => const ProfileViewPhone(),

    Routes.cart: (RouteData data) => const CartView(),

    Routes.kelom: (RouteData data) => const KelomView(),
    Routes.rok: (RouteData data) => const RokView(),
    Routes.kelomDetail: (RouteData data) {
      // final id = data.pathParams['id'];
      // logx.i(id.toString());
      // Prov.women.st.rxSelectedId.refresh();
      // Prov.women.st.rxSelectedId.setState((s) => id);
      return const KelomDetailView();
    },
    Routes.rokDetail: (RouteData data) => const RokDetailView(),
    Routes.kebayaDetail: (RouteData data) => const KebayaDetailView(),
    Routes.kebaya: (RouteData data) => const KebayaView(),
  };
}
