part of '_index.dart';

abstract class Data {
  static Injected<AdminProductListData> get adminProductList => _adminProductListData;
  static Injected<AdminProductDetailData> get adminProductDetail => _adminProductDetailData;
  static Injected<AdminProductInputData> get adminProductInput => _adminProductInputData;
  static Injected<AdminProductEditData> get adminProductEdit => _adminProductEditData;
  static Injected<ProductListData> get productList => _productListData;
  static Injected<ProductDetailData> get productDetail => _productDetailData;
  static Injected<ProductInputData> get productInput => _productInputData;
  static Injected<ProductEditData> get productEdit => _productEditData;
  static Injected<LoginData> get login => _loginData;
  static Injected<RegisterData> get register => _registerData;
  static Injected<HomeData> get home => _homeData;
  static Injected<ManData> get man => _manData;
  static Injected<WomenData> get woman => _womanData;
  static Injected<KidsData> get kids => _kidsData;
  static Injected<AllData> get all => _allData;
  static Injected<CartData> get cart => _cartData;
  static Injected<ProfileData> get profile => _profileData;
  static Injected<SearchData> get search => _searchData;
  static Injected<WomenDetailData> get womenDetail => _womenDetailData;
}

final _adminProductListData = RM1.inj(AdminProductListData(), Ctrl.adminProductList.init);
final _adminProductDetailData = RM1.inj(AdminProductDetailData(), Ctrl.adminProductDetail.init);
final _adminProductInputData = RM1.inj(AdminProductInputData(), Ctrl.adminProductInput.init);
final _adminProductEditData = RM1.inj(AdminProductEditData(), Ctrl.adminProductEdit.init);
final _productListData = RM1.inj(ProductListData(), Ctrl.productList.init);
final _productDetailData = RM1.inj(ProductDetailData(), Ctrl.productDetail.init);
final _productInputData = RM1.inj(ProductInputData(), Ctrl.productInput.init);
final _productEditData = RM1.inj(ProductEditData(), Ctrl.productEdit.init);
final _loginData = RM1.inj(LoginData(), Ctrl.login.init);
final _registerData = RM1.inj(RegisterData(), Ctrl.register.init);
final _homeData = RM1.inj(HomeData(), Ctrl.home.init);
final _manData = RM1.inj(ManData(), Ctrl.man.init);
final _womanData = RM1.inj(WomenData(), Ctrl.woman.init);
final _kidsData = RM1.inj(KidsData(), Ctrl.kids.init);
final _allData = RM1.inj(AllData(), Ctrl.all.init);
final _cartData = RM1.inj(CartData(), Ctrl.cart.init);
final _profileData = RM1.inj(ProfileData(), Ctrl.profile.init);
final _searchData = RM1.inj(SearchData(), Ctrl.search.init);
final _womenDetailData = RM1.inj(WomenDetailData(), Ctrl.womenDetail.init);
