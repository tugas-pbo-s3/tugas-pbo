part of '_index.dart';

class AuthProv {
  final rxAuth = RM.injectFuture<Auth?>(
    () => Future.value(null),
    sideEffects: SideEffects.onAll(
      onWaiting: () => logx.s('OnWaiting ...'),
      onError: (e, s) => logx.s('OnError ...'),
      onData: (data) {
        Serv.auth.isLogin(data);
      },
    ),
    persist: () => PersistState(
      key: 'rxAuth',
      throttleDelay: 500,
      shouldRecreateTheState: false,
      toJson: (s) => s!.toJson(),
      fromJson: (j) => Auth.fromJson(j),
    ),
  );
}
