import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:tugas_pbo/dt_domains/_models/_index.dart';
import 'package:tugas_pbo/dt_domains/men/_index.dart';

import '../../../../app/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.men.data.dart';
part 'b.men.ctrl.dart';
part 'c.men.view.dart';
part 'widgets/a.man.appbar.dart';
part 'widgets/b.man.fab.dart';
part 'widgets/c.man.load.dart';
part 'widgets/d.man.list.dart';
part 'widgets/e.man.echo.dart';

ManData get _dt => Data.man.st;
MenCtrl get _ct => Ctrl.man;

MenProv get _pv => Prov.man.st;
MenServ get _sv => Serv.man;
