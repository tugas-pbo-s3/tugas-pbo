import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/ui_screens/_index.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.admin_home.data.dart';
part 'b.admin_home.ctrl.dart';
part 'c.admin_home.view.dart';
part 'widgets/a.admin_home.appbar.dart';
part 'widgets/b.admin_home.fab.dart';
part 'widgets/c.admin_home.sidebar.dart';
part 'widgets/d.admin_home.screen.dart';
part 'widgets/e.admin_home.echo.dart';

AdminHomeData get _dt => Data.adminHome.st;
AdminHomeCtrl get _ct => Ctrl.adminHome;

// static AdminHomeCtrl get adminHome => AdminHomeCtrl();
// final _adminHomeData = RM1.inj(AdminHomeData(), Ctrl.adminHome.init);
// static Injected<AdminHomeData> get adminHome => _adminHomeData;
// export 'admin_home/_index.dart';

