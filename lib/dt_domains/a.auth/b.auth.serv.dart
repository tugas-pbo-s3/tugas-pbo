part of '_index.dart';

class AuthServ {
  init() => logxx.i(AuthServ, '.....');

  Future<void> postAuth(Map<String, dynamic> login) async {
    try {
      await Repo.auth.st.postAuth(login);
    } catch (e) {
      rethrow;
    }
  }

  isLogin(Auth? data) {
    if (data == null) {
      // nav.toReplacement(Routes.login);
      // x1HttpDio.dio.options.headers = null;
    } else {
      // nav.toReplacement(Routes.productList);
      // x1HttpDio.dio.options.headers = {'Authorization': 'Bearer ${data.token}'};
    }
  }
}
