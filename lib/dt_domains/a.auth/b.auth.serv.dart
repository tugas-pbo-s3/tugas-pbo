part of '_index.dart';

class AuthServ {
  init() {
    logxx.i(AuthServ, 'AuthServ init ...');
    _pv.rxUser.subscription = x1FbAuth.st.instance.authStateChanges().listen(
          (event) => _pv.rxUser.st = event,
        );
  }

  responseAuthState(User? user) async {
    if (nav.routeData.location == '/login' || nav.routeData.location == '/register') {
      if (user != null) {
        nav.toReplacement(Routes.productList);
      }
    } else {
      if (user == null) {
        nav.toAndRemoveUntil(Routes.login);
      }
    }
  }

  close() => _pv.rxUser.subscription?.cancel();

  createUserWithEmailAndPassword(String email, String password) async {
    try {
      await x1FbAuth.st.createUserWithEmailAndPassword(email, password);
    } catch (e) {
      rethrow;
    }
    // x1FbAuth.st.createUserWithEmailAndPassword(email, password);
  }

  signInWithEmailAndPassword(String email, String password) {
    x1FbAuth.st.signInWithEmailAndPassword(email, password);
  }

  signInWithGoogle() {
    x1FbAuth.st.signInWithGoogle();
  }

  signInAnonymously() {
    x1FbAuth.st.signInAnonymously();
  }

  signOut() {
    x1FbAuth.st.signOut();
  }

  deleteAccount() async {
    x1FbAuth.st.deleteAccount(_pv.rxUser.st);
  }
}
