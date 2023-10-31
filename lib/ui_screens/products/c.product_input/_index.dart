import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_input.data.dart';
part 'b.product_input.ctrl.dart';
part 'c.product_input.view.dart';
part 'widgets/a.product_input.appbar.dart';
part 'widgets/b.product_input.fab.dart';
part 'widgets/c.product_input.charlie.dart';
part 'widgets/d.product_input.delta.dart';
part 'widgets/e.product_input.echo.dart';

ProductInputData get _dt => Data.productInput.st;
ProductInputCtrl get _ct => Ctrl.productInput;
