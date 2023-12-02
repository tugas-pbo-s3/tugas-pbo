part of '_index.dart';

abstract class Data {
  static Injected<AdminHomeData> get adminHome => _adminHomeData;

  static Injected<AdminKelomData> get adminKelom => _adminKelomData;
  static Injected<AdminKelomInputData> get adminKelomInput => _adminKelomInputData;

  static Injected<AdminKebayaData> get adminKebaya => _adminKebayaData;
  static Injected<AdminKebayaInputData> get adminKebayaInput => _adminKebayaInputData;

  static Injected<AdminRokData> get adminRok => _adminRokData;
  static Injected<AdminRokInputData> get adminRokInput => _adminRokInputData;

  static Injected<AdminCategoryListData> get adminCategoryList => _adminCategoryListData;

  static Injected<ProductListData> get productList => _productListData;
  static Injected<ProductDetailData> get productDetail => _productDetailData;
  static Injected<ProductInputData> get productInput => _productInputData;
  static Injected<ProductEditData> get productEdit => _productEditData;

  static Injected<LoginData> get login => _loginData;
  static Injected<RegisterData> get register => _registerData;
  static Injected<HomeData> get home => _homeData;
  static Injected<CartData> get keranjang => _keranjangData;
  static Injected<ProfileData> get profile => _profileData;

  static Injected<RokData> get rok => _rokData;
  static Injected<RokDetailData> get rokDetail => _rokDetailData;
  static Injected<KelomData> get kelom => _kelomData;
  static Injected<KelomDetailData> get kelomDetail => _kelomDetailData;
  static Injected<KebayaData> get kebaya => _kebayaData;
  static Injected<KebayaDetailData> get kebayaDetail => _kebayaDetailData;
}

final _adminHomeData = RM1.inj(AdminHomeData(), () => Ctrl.adminHome.init);

final _adminKelomData = RM1.inj(AdminKelomData(), Ctrl.adminWomenShoesList.init);
final _adminKelomInputData = RM1.inj(AdminKelomInputData(), Ctrl.adminWomenShoesInput.init);

final _adminKebayaData = RM1.inj(AdminKebayaData(), Ctrl.adminMenShoesList.init);
final _adminKebayaInputData = RM1.inj(AdminKebayaInputData(), Ctrl.adminMenShoesInput.init);

final _adminRokData = RM1.inj(AdminRokData(), Ctrl.adminKidsShoesList.init);
final _adminRokInputData = RM1.inj(AdminRokInputData(), Ctrl.adminKidsShoesInput.init);

final _adminCategoryListData = RM1.inj(AdminCategoryListData(), Ctrl.adminCategoryList.init);

final _productListData = RM1.inj(ProductListData(), Ctrl.productList.init);
final _productDetailData = RM1.inj(ProductDetailData(), Ctrl.productDetail.init);
final _productInputData = RM1.inj(ProductInputData(), Ctrl.productInput.init);
final _productEditData = RM1.inj(ProductEditData(), Ctrl.productEdit.init);

final _loginData = RM1.inj(LoginData(), Ctrl.login.init);
final _registerData = RM1.inj(RegisterData(), Ctrl.register.init);
final _homeData = RM1.inj(HomeData(), Ctrl.home.init);
final _keranjangData = RM1.inj(CartData(), Ctrl.keranjang.init);
final _profileData = RM1.inj(ProfileData(), Ctrl.profile.init);

final _rokData = RM1.inj(RokData(), Ctrl.rok.init);
final _rokDetailData = RM1.inj(RokDetailData(), Ctrl.rokDetail.init);
final _kelomData = RM1.inj(KelomData(), Ctrl.woman.init);
final _kelomDetailData = RM1.inj(KelomDetailData(), Ctrl.womenDetail.init);
final _kebayaData = RM1.inj(KebayaData(), Ctrl.kebaya.init);
final _kebayaDetailData = RM1.inj(KebayaDetailData(), Ctrl.kebayaDetail.init);
