part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.root: (RouteData data) => const HomeView(),
    //* master -- ----- ----- ----- ----- -----
    Routes.adminHome: (RouteData data) => const AdminHomeView(),

    Routes.adminWomenShoesList: (RouteData data) => const AdminWomenShoesListView(),
    Routes.adminWomenShoesInput: (RouteData data) => const AdminWomenShoesInputView(),

    Routes.adminMenShoesList: (RouteData data) => const AdminMenShoesListView(),
    Routes.adminMenShoesInput: (RouteData data) => const AdminMenShoesInputView(),

    Routes.adminKidsShoesList: (RouteData data) => const AdminKidsShoesListView(),
    Routes.adminKidsShoesInput: (RouteData data) => const AdminKidsShoesInputView(),

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

    Routes.all: (RouteData data) => const AllView(),
    Routes.women: (RouteData data) => const WomenView(),
    Routes.man: (RouteData data) => const ManView(),
    Routes.kids: (RouteData data) => const KidsView(),
    Routes.search: (RouteData data) => const SearchView(),
    Routes.womenDetail: (RouteData data) {
      // final id = data.pathParams['id'];
      // logx.i(id.toString());
      // Prov.women.st.rxSelectedId.refresh();
      // Prov.women.st.rxSelectedId.setState((s) => id);
      return const WomenDetailView();
    },
    Routes.manDetail: (RouteData data) => const MenDetailView(),
    Routes.kidsDetail: (RouteData data) => const KidsDetailView(),
  };
}
