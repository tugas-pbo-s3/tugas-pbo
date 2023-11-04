part of '_index.dart';

class UserRepoMock implements UserRepo {
  // @override
  // Future createUser(UserX user, XFile? file) {
  //   throw UnimplementedError();
  // }

  // @override
  // Future deleteUser() {
  //   throw UnimplementedError();
  // }

  // @override
  // Future<UserX> readUser(String id) async {
  //   try {
  //     await Future.delayed(400.milliseconds);
  //     final index = Prov.user.st.rxUserList.st.indexWhere((element) => element.userId == id);
  //     return Prov.user.st.rxUserList.st[index];
  //   } catch (e) {
  //     logx.e('[User: RepoMock] readUser');
  //     rethrow;
  //   }
  // }

  // @override
  // Future<List<UserX>> readUsers() async {
  //   try {
  //     List<UserX> users = [];
  //     final result = await Fun.loadJson('assets/json/users.json');
  //     for (var user in result["data"]) {
  //       users.add(UserX.fromMap(user));
  //     }
  //     return users;
  //   } catch (e) {
  //     logx.e('[User: RepoMock] readUsers');
  //     rethrow;
  //   }
  // }

  // @override
  // Future updateUser(UserX user, String userId, XFile? file) {
  //   throw UnimplementedError();
  // }

  // @override
  // Future<String> uploadImage(XFile? file) {
  //   throw UnimplementedError();
  // }
}
