import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';

import '../../../../app/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.kelom.data.dart';
part 'b.kelom.ctrl.dart';
part 'c.kelom.view.dart';
part 'widgets/a.kelom.appbar.dart';
part 'widgets/b.kelom.fab.dart';
part 'widgets/c.kelom.load.dart';
part 'widgets/d.kelom.list.dart';
part 'widgets/e.kelom.echo.dart';

KelomData get _dt => Data.kelom.st;
KelomCtrl get _ct => Ctrl.woman;
KelomProv get _pv => Prov.kelom.st;
KelomServ get _sv => Serv.kelom;
// ProductProv get _pv => Prov.product.st;
// ProductServ get _sv => Serv.product;
