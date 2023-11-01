part of '_index.dart';

class UserRepoMock implements UserRepo {
  @override
  Future createUser(User user, XFile? file) {
    throw UnimplementedError();
  }

  @override
  Future deleteUser() {
    throw UnimplementedError();
  }

  @override
  Future<User> readUser(String id) async {
    try {
      await Future.delayed(400.milliseconds);
      final index = Prov.user.st.rxUserList.st.indexWhere((element) => element.userId == id);
      return Prov.user.st.rxUserList.st[index];
    } catch (e) {
      logx.e('[User: RepoMock] readUser');
      rethrow;
    }
  }

  @override
  Future<List<User>> readUsers() async {
    try {
      List<User> users = [];
      final result = await Fun.loadJson('assets/json/users.json');
      for (var user in result["data"]) {
        users.add(User.fromMap(user));
      }
      return users;
    } catch (e) {
      logx.e('[User: RepoMock] readUsers');
      rethrow;
    }
  }

  @override
  Future updateUser(User user, String userId, XFile? file) {
    throw UnimplementedError();
  }

  @override
  Future<String> uploadImage(XFile? file) {
    throw UnimplementedError();
  }
}
