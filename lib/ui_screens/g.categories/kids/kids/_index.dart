import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';

import '../../../../app/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.kids.data.dart';
part 'b.kids.ctrl.dart';
part 'c.kids.view.dart';
part 'widgets/a.kids.appbar.dart';
part 'widgets/b.kids.fab.dart';
part 'widgets/c.kids.load.dart';
part 'widgets/d.kids.list.dart';
part 'widgets/e.kids.echo.dart';

KidsData get _dt => Data.kids.st;
KidsCtrl get _ct => Ctrl.kids;
KidsProv get _pv => Prov.kids.st;
KidsServ get _sv => Serv.kids;
