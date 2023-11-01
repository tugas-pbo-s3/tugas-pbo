part of '_index.dart';

class TypeServ {
  init() => logxx.i(TypeServ, 'TypeServ init ...');
  TypeProv get pv => Prov.type.st;

  setSelectedId(String id) {
    pv.rxSelectedId.refresh();
    pv.rxSelectedId.setState((s) => id);
  }

  addToList(List<TypeOfShoes> moreTypes) {
    pv.rxTypeList.setState((s) => [...s, ...moreTypes]);
  }

  Future<void> createType(TypeOfShoes type) async {
    try {
      await Repo.type.st.createType(type);
    } catch (e) {
      rethrow;
    }
  }

  // --- read type ---

  void initTypeDetail() {
    pv.rxTypeDetail.stateAsync = handleTypeDetail();
  }

  Future<TypeOfShoes> handleTypeDetail() async {
    try {
      final type = await readTypeDetail();
      return type;
    } catch (e) {
      return Fun.handleDummyException(e);
    }
  }

  Future<TypeOfShoes> readTypeDetail() async {
    try {
      final type = await Repo.type.st.readType(pv.rxSelectedId.st);
      return type;
    } catch (e) {
      rethrow;
    }
  }

  // --- read types ---

  Future<dynamic> initTypeLoader() async {
    await pv.rxTypeList.refresh();
    pv.rxTypeLoader.stateAsync = pv.rxTypeLoader.setState((s) => handleTypeLoader());
  }

  Future<dynamic> nextTypeLoader() async {
    pv.rxTypeLoader.stateAsync = pv.rxTypeLoader.setState((s) => handleTypeLoader());
  }

  Future<dynamic> handleTypeLoader() async {
    try {
      final initRxLoadMore = await readTypeLoader();
      pv.rxTypeLoader.setToHasData(initRxLoadMore);
    } catch (e) {
      pv.rxTypeLoader.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<dynamic> readTypeLoader() async {
    try {
      // await createSeederTypes();
      final types = await Repo.type.st.readTypes();
      return types;
    } catch (e) {
      rethrow;
    }
  }
}
