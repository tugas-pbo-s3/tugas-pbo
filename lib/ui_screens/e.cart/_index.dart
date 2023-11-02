import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.cart.data.dart';
part 'b.cart.ctrl.dart';
part 'c.cart.view.dart';
part 'widgets/a.cart.appbar.dart';
part 'widgets/b.cart.fab.dart';
part 'widgets/c.cart.charlie.dart';
part 'widgets/d.cart.delta.dart';
part 'widgets/e.cart.echo.dart';

CartData get _dt => Data.cart.st;
CartCtrl get _ct => Ctrl.cart;
