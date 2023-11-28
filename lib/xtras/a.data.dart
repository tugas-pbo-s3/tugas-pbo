part of '_index.dart';

abstract class Data {
  static Injected<AdminHomeData> get adminHome => _adminHomeData;

  static Injected<AdminWomenShoesListData> get adminWomenShoesList => _adminWomenShoesListData;
  static Injected<AdminWomenShoesInputData> get adminWomenShoesInput => _adminWomenShoesInputData;

  static Injected<AdminMenShoesListData> get adminMenShoesList => _adminMenShoesListData;
  static Injected<AdminMenShoesInputData> get adminMenShoesInput => _adminMenShoesInputData;

  static Injected<AdminKidsShoesListData> get adminKidsShoesList => _adminKidsShoesListData;
  static Injected<AdminKidsShoesInputData> get adminKidsShoesInput => _adminKidsShoesInputData;

  static Injected<AdminCategoryListData> get adminCategoryList => _adminCategoryListData;

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
  static Injected<WomenDetailData> get womenDetail => _womenDetailData;
  static Injected<ManDetailData> get manDetail => _manDetailData;

  static Injected<KidsDetailData> get kidsDetail => _kidsDetailData;
}

final _adminHomeData = RM1.inj(AdminHomeData(), () => Ctrl.adminHome.init);

final _adminWomenShoesListData = RM1.inj(AdminWomenShoesListData(), Ctrl.adminWomenShoesList.init);
final _adminWomenShoesInputData = RM1.inj(AdminWomenShoesInputData(), Ctrl.adminWomenShoesInput.init);

final _adminMenShoesListData = RM1.inj(AdminMenShoesListData(), Ctrl.adminMenShoesList.init);
final _adminMenShoesInputData = RM1.inj(AdminMenShoesInputData(), Ctrl.adminMenShoesInput.init);

final _adminKidsShoesListData = RM1.inj(AdminKidsShoesListData(), Ctrl.adminKidsShoesList.init);
final _adminKidsShoesInputData = RM1.inj(AdminKidsShoesInputData(), Ctrl.adminKidsShoesInput.init);

final _adminCategoryListData = RM1.inj(AdminCategoryListData(), Ctrl.adminCategoryList.init);

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
final _womenDetailData = RM1.inj(WomenDetailData(), Ctrl.womenDetail.init);
final _manDetailData = RM1.inj(ManDetailData(), Ctrl.manDetail.init);
final _kidsDetailData = RM1.inj(KidsDetailData(), Ctrl.kidsDetail.init);
