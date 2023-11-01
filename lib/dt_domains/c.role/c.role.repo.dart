part of '_index.dart';

class RoleRepo {
  Future<List<Role>> readRoles() async {
    try {
      List<Role> roles = [];
      final result = await x1HttpDio.get(ReqX(path: '/roles'));
      for (var role in result.data['data']) {
        roles.add(Role.fromMap(role));
      }
      logx.i(roles.toString());

      return roles;
    } catch (e) {
      logx.e('this is from read roles repo');
      rethrow;
    }
  }

  Future<Role> readRole(String id) async {
    try {
      final roles = Prov.role.st.rxRoleList.st;
      final index = roles.indexWhere((element) => element.roleId == id);
      return roles[index];
    } catch (e) {
      logx.e('this is from read role repo');
      rethrow;
    }
  }

  Future<dynamic> createRole() async {
    try {} catch (e) {
      logx.e('this is from create product repo');
      rethrow;
    }
  }

  Future<dynamic> deleteRole() async {
    try {} catch (e) {
      logx.e('this is from delete product repo');
      rethrow;
    }
  }

  Future<dynamic> updateRole() async {
    try {} catch (e) {
      logx.e('this is from update product repo');
      rethrow;
    }
  }
}
