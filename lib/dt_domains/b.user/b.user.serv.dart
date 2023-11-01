part of '_index.dart';

class UserServ {
  UserProv get pv => Prov.user.st;
  init() => logxx.i(UserServ, 'UserServ init ...');

  setSelectedId(String id) {
    pv.rxSelectedId.refresh();
    pv.rxSelectedId.setState((s) => id);
  }

  addToList(List<User> moreUsers) {
    pv.rxUserList.setState((s) => [...s, ...moreUsers]);
  }

  Future<void> createUser(User user, XFile? file) async {
    try {
      await Repo.user.st.createUser(user, file);
    } catch (e) {
      rethrow;
    }
  }

  // --- read user ---

  void initUserDetail() {
    pv.rxUserDetail.stateAsync = handleUserDetail();
  }

  Future<User> handleUserDetail() async {
    try {
      final user = await readUserDetail();
      return user;
    } catch (e) {
      return Fun.handleDummyException(e);
    }
  }

  Future<User> readUserDetail() async {
    try {
      final user = await Repo.user.st.readUser(pv.rxSelectedId.st);
      return user;
    } catch (e) {
      rethrow;
    }
  }

  // --- read users ---

  Future<dynamic> initUsersLoader() async {
    await pv.rxUserList.refresh();
    pv.rxUserLoader.stateAsync = pv.rxUserLoader.setState((s) => handleUserLoader());
  }

  Future<dynamic> nextUserLoader() async {
    pv.rxUserLoader.stateAsync = pv.rxUserLoader.setState((s) => handleUserLoader());
  }

  Future<dynamic> handleUserLoader() async {
    try {
      final initRxLoadMore = await readUserLoader();
      pv.rxUserLoader.setToHasData(initRxLoadMore);
    } catch (e) {
      pv.rxUserLoader.setToHasError(e);
      return Fun.handleException(e);
    }
  }

  Future<dynamic> readUserLoader() async {
    try {
      // await createSeederUsers();
      final users = await Repo.user.st.readUsers();
      return users;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateUser(User user, XFile? file) async {
    try {
      await Repo.user.st.updateUser(user, pv.rxSelectedId.st, file);
    } catch (e) {
      rethrow;
    }
  }

  updateOneOfUserList(User user) {
    pv.rxUserList.setState((s) {
      final index = s.indexWhere((element) => element.userId == pv.rxSelectedId.st);
      return s[index] = user;
    });
  }
}
