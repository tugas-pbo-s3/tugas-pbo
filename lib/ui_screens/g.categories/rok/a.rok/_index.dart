import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';

import '../../../../app/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.rok.data.dart';
part 'b.rok.ctrl.dart';
part 'c.rok.view.dart';
part 'widgets/a.rok.appbar.dart';
part 'widgets/b.rok.fab.dart';
part 'widgets/c.rok.load.dart';
part 'widgets/d.rok.list.dart';
part 'widgets/e.rok.echo.dart';

RokData get _dt => Data.rok.st;
RokCtrl get _ct => Ctrl.rok;
RokProv get _pv => Prov.rok.st;
RokServ get _sv => Serv.rok;
