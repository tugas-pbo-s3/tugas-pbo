part of '_index.dart';

final x1HttpDio = HttpDio()..init();

class ReqX {
  String path;
  Map<String, dynamic>? params;
  Options? options;
  dynamic data;
  ReqX({
    required this.path,
    this.params,
    this.options,
    this.data,
  });
}

class HttpDio {
  late Dio dio;

  void init() {
    // final auth = Prov.auth.st.rxUser.st;
    dio = Dio();

    dio.options = BaseOptions(
      baseUrl: config.st.apiHost,
      headers: config.st.authToken == '' ? null : {'Authorization': 'Bearer ${config.st.authToken}'},
      // headers: auth == null ? null : {'Authorization': 'Bearer ${auth.token}'},
    );
    dio.interceptors.add(DioLogInterceptor());
    logxx.wtf(HttpDio, 'success init for dio and add interceptors.');
  }

  Future<dynamic> post(ReqX reqx) async {
    try {
      final response = await dio.post(
        reqx.path,
        queryParameters: reqx.params,
        data: reqx.data,
      );
      return response;
    } catch (obj) {
      rethrow;
    }
  }

  Future<dynamic> get(ReqX reqx) async {
    try {
      final response = await dio.get(
        reqx.path,
        queryParameters: reqx.params,
      );
      return response;
    } catch (obj) {
      rethrow;
    }
  }

  Future<dynamic> put(ReqX reqx) async {
    try {
      final response = await dio.put(
        reqx.path,
        queryParameters: reqx.params,
        data: reqx.data,
      );
      return response;
    } catch (obj) {
      rethrow;
    }
  }

  Future<dynamic> delete(ReqX reqx) async {
    try {
      final response = await dio.delete(
        reqx.path,
        queryParameters: reqx.params,
        data: reqx.data,
      );
      return response;
    } catch (obj) {
      rethrow;
    }
  }

  Future<dynamic> upload(ReqX reqx) async {
    try {
      final response = await dio.post(
        reqx.path,
        queryParameters: reqx.params,
        data: reqx.data,
        options: Options(
          contentType: 'multipart/form-data',
          responseType: ResponseType.json,
          // headers: {
          //   'Accept': 'application/json',
          //   'Content-Type': 'multipart/form-data',
          // },
        ),
      );
      return response;
    } catch (obj) {
      rethrow;
    }
  }
}
