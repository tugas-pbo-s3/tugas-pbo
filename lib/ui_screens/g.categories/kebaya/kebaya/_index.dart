import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../../app/_index.dart';
import '../../../../dt_domains/_models/_index.dart';
import '../../../../dt_domains/kebaya/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.kebaya.data.dart';
part 'b.kebaya.ctrl.dart';
part 'c.kebaya.view.dart';
part 'widgets/a.kebaya.appbar.dart';
part 'widgets/b.kebaya.fab.dart';
part 'widgets/c.kebaya.load.dart';
part 'widgets/d.kebaya.list.dart';
part 'widgets/e.kebaya.echo.dart';

KebayaData get _dt => Data.kebaya.st;
KebayaCtrl get _ct => Ctrl.kebaya;

KebayaProv get _pv => Prov.kebaya.st;
KebayaServ get _sv => Serv.kebaya;
