part of '_index.dart';

class TypeRepoMock implements TypeRepo {
  @override
  Future createType(TypeOfShoes type) {
    throw UnimplementedError();
  }

  @override
  Future deleteTypeOfShoes() {
    throw UnimplementedError();
  }

  @override
  Future<TypeOfShoes> readType(String id) async {
    await Future.delayed(400.milliseconds);
    final index = _pv.rxTypeList.st.indexWhere((element) => element.typeId == id);
    return _pv.rxTypeList.st[index];
  }

  @override
  Future<List<TypeOfShoes>> readTypes() async {
    List<TypeOfShoes> types = [];
    final result = await Fun.loadJson('assets/json/types.json');
    for (var t in result["data"]) {
      types.add(TypeOfShoes.fromMap(t));
    }
    return types;
  }

  @override
  Future updateTypeOfShoes() {
    throw UnimplementedError();
  }
}
