part of '_index.dart';

class RoleServ {
  init() => logxx.i(RoleServ, 'RoleServ init ...');
  RoleProv get pv => Prov.role.st;

  setSelectedId(String id) {
    pv.rxSelectedId.refresh();
    pv.rxSelectedId.setState((s) => id);
  }

  addToList(List<Role> moreRoles) {
    pv.rxRoleList.setState((s) => [...s, ...moreRoles]);
  }

  // --- read role ---

  void initRoleDetail() {
    pv.rxRoleDetail.stateAsync = handleRoleDetail();
  }

  Future<Role> handleRoleDetail() async {
    try {
      final role = await readRoleDetail();
      return role;
    } catch (e) {
      return Fun.handleDummyException(e);
    }
  }

  Future<Role> readRoleDetail() async {
    try {
      final role = await Repo.role.st.readRole(pv.rxSelectedId.st);
      return role;
    } catch (e) {
      rethrow;
    }
  }

  // --- read roles ---

  Future<dynamic> initRolesLoader() async {
    await pv.rxRoleList.refresh();
    pv.rxRoleLoader.stateAsync = pv.rxRoleLoader.setState((s) => handleRoleLoader());
  }

  Future<dynamic> nextRoleLoader() async {
    pv.rxRoleLoader.stateAsync = pv.rxRoleLoader.setState((s) => handleRoleLoader());
  }

  Future<dynamic> handleRoleLoader() async {
    try {
      final initRxLoadMore = await readRoleLoader();
      pv.rxRoleLoader.setToHasData(initRxLoadMore);
    } catch (e) {
      pv.rxRoleLoader.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<dynamic> readRoleLoader() async {
    try {
      // await createSeederRoles();
      final roles = await Repo.role.st.readRoles();
      return roles;
    } catch (e) {
      rethrow;
    }
  }
}
