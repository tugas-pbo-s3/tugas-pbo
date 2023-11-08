import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';
import 'package:tugas_pbo/dt_domains/d.product/_index.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.woman.data.dart';
part 'b.woman.ctrl.dart';
part 'c.woman.view.dart';
part 'widgets/a.woman.appbar.dart';
part 'widgets/b.woman.fab.dart';
part 'widgets/c.woman.charlie.dart';
part 'widgets/d.woman.delta.dart';
part 'widgets/e.woman.echo.dart';

WomanData get _dt => Data.woman.st;
WomanCtrl get _ct => Ctrl.woman;
ProductServ get _sv => Serv.product;
ProductProv get _pv => Prov.product.st;
