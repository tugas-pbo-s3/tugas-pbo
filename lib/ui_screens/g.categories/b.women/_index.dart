import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.women.data.dart';
part 'b.women.ctrl.dart';
part 'c.women.view.dart';
part 'widgets/a.woman.appbar.dart';
part 'widgets/b.woman.fab.dart';
part 'widgets/c.woman.charlie.dart';
part 'widgets/d.woman.delta.dart';
part 'widgets/e.woman.echo.dart';

WomenData get _dt => Data.woman.st;
WomenCtrl get _ct => Ctrl.woman;
WomenProv get _pv => Prov.women.st;
WomenServ get _sv => Serv.women;
// ProductProv get _pv => Prov.product.st;
// ProductServ get _sv => Serv.product;
