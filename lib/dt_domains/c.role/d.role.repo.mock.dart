part of '_index.dart';

class RoleRepoMock implements RoleRepo {
  @override
  Future createRole() {
    throw UnimplementedError();
  }

  @override
  Future deleteRole() {
    throw UnimplementedError();
  }

  @override
  Future<Role> readRole(String id) async {
    try {
      await Future.delayed(400.milliseconds);
      final index = Prov.role.st.rxRoleList.st.indexWhere((element) => element.roleId == id);
      return Prov.role.st.rxRoleList.st[index];
    } catch (e) {
      logx.e('[Role: RepoMock] readRole');
      rethrow;
    }
  }

  @override
  Future<List<Role>> readRoles() async {
    try {
      List<Role> roles = [];
      final result = await Fun.loadJson('assets/json/roles.json');
      for (var role in result["data"]) {
        roles.add(Role.fromMap(role));
      }
      return roles;
    } catch (e) {
      logx.e('[Role: RepoMock] readRoles');
      rethrow;
    }
  }

  @override
  Future updateRole() {
    throw UnimplementedError();
  }
}
