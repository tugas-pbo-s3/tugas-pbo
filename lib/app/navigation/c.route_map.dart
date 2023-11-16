part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.root: (RouteData data) => const HomeView(),
    //* master -- ----- ----- ----- ----- -----

    Routes.adminProductList: (RouteData data) => const AdminProductListView(),
    Routes.adminProductDetail: (RouteData data) => const AdminProductDetailView(),
    Routes.adminProductInput: (RouteData data) => const AdminProductInputView(),
    Routes.adminProductEdit: (RouteData data) => const AdminProductEditView(),

    Routes.adminCategoryList: (RouteData data) => const AdminCategoryListView(),
    Routes.adminCategoryDetail: (RouteData data) => const AdminCategoryDetailView(),

    Routes.productList: (RouteData data) => const ProductListView(),
    Routes.productDetail: (RouteData data) => const ProductDetailView(),
    Routes.productInput: (RouteData data) => const ProductInputView(),
    Routes.productEdit: (RouteData data) => const ProductEditView(),

    Routes.login: (RouteData data) => const LoginView(),
    Routes.register: (RouteData data) => const RegisterView(),

    Routes.home: (RouteData data) => const HomeView(),

    Routes.profile: (RouteData data) => const ProfileView(),

    Routes.cart: (RouteData data) => const CartView(),

    Routes.all: (RouteData data) => const AllView(),
    Routes.women: (RouteData data) => const WomenView(),
    Routes.man: (RouteData data) => const ManView(),
    Routes.kids: (RouteData data) => const KidsView(),
    Routes.search: (RouteData data) => const SearchView(),
    Routes.womenDetail: (RouteData data) => const WomenDetailView(),
    Routes.manDetail: (RouteData data) => const MenDetailView(),
    Routes.kidsDetail: (RouteData data) => const KidsDetailView(),
  };
}
