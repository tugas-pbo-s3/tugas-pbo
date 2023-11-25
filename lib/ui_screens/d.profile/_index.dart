import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/a.auth/_index.dart';
import 'package:tugas_pbo/ui_widgets/space/_index.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.profile.data.dart';
part 'b.profile.ctrl.dart';
part 'c.profile.view.dart';
part 'widgets/a.profile.appbar.dart';
part 'widgets/b.profile.fab.dart';
part 'widgets/c.profile.photo.dart';
part 'widgets/d.profile.username.dart';
part 'widgets/e.profile.email.dart';
part 'widgets/f.profile.logout.dart';

ProfileData get _dt => Data.profile.st;
ProfileCtrl get _ct => Ctrl.profile;
AuthServ get _sv => Serv.auth;
