part of '_index.dart';

class UserProv {
  // final rxSelectedId = RM.inject<String>(() => '');

  // final rxUserList = RM.inject<List<UserX>>(() => []);

  // final rxPickedFile = RM.inject<XFile?>(() => null);

  // final rxImageUrl = RM.inject<String?>(() => null);

  // final rxUserLoader = RM.injectFuture<List<UserX>?>(
  //   () => Future.value([]),
  //   sideEffects: SideEffects(
  //     initState: () => Serv.user.initUsersLoader(),
  //     onSetState: (snap) {
  //       snap.onAll(
  //         onIdle: () => logx.s('from snap rxUserLoader: onIdle ...'),
  //         onWaiting: () => logx.s('from snap rxUserLoader: onWaiting ...'),
  //         onError: (_, __) => logx.s('from snap rxUserLoader: onError ...'),
  //         onData: (data) {
  //           logx.s('from snap rxUserLoader: onData ...');
  //           final moreUsers = data;
  //           if (moreUsers != null) {
  //             Serv.user.addToList(moreUsers);
  //           }
  //         },
  //       );
  //     },
  //   ),
  // );

  // final rxUserDetail = RM.injectFuture<UserX?>(
  //   () => Future.value(null),
  //   sideEffects: SideEffects(
  //     initState: () => Serv.user.initUserDetail(),
  //   ),
  // );
}
