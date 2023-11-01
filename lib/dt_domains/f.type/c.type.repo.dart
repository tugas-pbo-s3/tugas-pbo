part of '_index.dart';

class TypeRepo {
  Future<List<TypeOfShoes>> readTypes() async {
    try {
      List<TypeOfShoes> types = [];
      final result = await x1HttpDio.get(ReqX(path: '/types'));
      for (var type in result.data['data']) {
        types.add(TypeOfShoes.fromMap(type));
      }
      return types;
    } catch (e) {
      logx.e('this is from read types repo');
      rethrow;
    }
  }

  Future<TypeOfShoes> readType(String id) async {
    try {
      final types = Prov.type.st.rxTypeList.st;
      final index = Prov.type.st.rxTypeList.st.indexWhere((element) => element.typeId == id);
      return types[index];
    } catch (e) {
      logx.e('[this is from read type repo]');
      rethrow;
    }
  }

  Future<dynamic> createType(TypeOfShoes type) async {
    try {
      await x1HttpDio.post(
        ReqX(
          path: '/types',
          data: type.toMap(),
        ),
      );
    } catch (e) {
      logx.e('this is from create type repo');
      rethrow;
    }
  }

  Future<dynamic> deleteTypeOfShoes() async {
    try {} catch (e) {
      logx.e('this is from delete type repo');
      rethrow;
    }
  }

  Future<dynamic> updateTypeOfShoes() async {
    try {} catch (e) {
      logx.e('this is from update type repo');
      rethrow;
    }
  }
}
