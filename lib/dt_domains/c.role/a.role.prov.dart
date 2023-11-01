part of '_index.dart';

class RoleProv {
  final rxSelectedId = RM.inject<String>(() => '');

  final rxRoleList = RM.inject<List<Role>>(() => []);

  final rxRoleLoader = RM.injectFuture<List<Role>?>(
    () => Future.value([]),
    sideEffects: SideEffects(
      initState: () => Serv.role.initRolesLoader(),
      onSetState: (snap) {
        snap.onAll(
          onIdle: () => logx.s('from snap rxRoleLoader: onIdle ...'),
          onWaiting: () => logx.s('from snap rxRoleLoader: onWaiting ...'),
          onError: (_, __) => logx.s('from snap rxRoleLoader: onError ...'),
          onData: (data) {
            logx.s('from snap rxRoleLoader: onData ...');
            final moreRoles = data;
            if (moreRoles != null) {
              Serv.role.addToList(moreRoles);
            }
          },
        );
      },
    ),
  );

  final rxRoleDetail = RM.injectFuture<Role?>(
    () => Future.value(null),
    sideEffects: SideEffects(
      initState: () => Serv.role.initRoleDetail(),
    ),
  );
}
