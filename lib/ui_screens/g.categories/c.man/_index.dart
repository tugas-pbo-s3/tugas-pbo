import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.man.data.dart';
part 'b.man.ctrl.dart';
part 'c.man.view.dart';
part 'widgets/a.man.appbar.dart';
part 'widgets/b.man.fab.dart';
part 'widgets/c.man.charlie.dart';
part 'widgets/d.man.delta.dart';
part 'widgets/e.man.echo.dart';

ManData get _dt => Data.man.st;
ManCtrl get _ct => Ctrl.man;
