import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../../app/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.man_detail.data.dart';
part 'b.man_detail.ctrl.dart';
part 'c.man_detail.view.dart';
part 'widgets/a.man_detail.appbar.dart';
part 'widgets/b.man_detail.fab.dart';
part 'widgets/c.man_detail.charlie.dart';
part 'widgets/d.man_detail.delta.dart';
part 'widgets/e.man_detail.echo.dart';

ManDetailData get _dt => Data.manDetail.st;
ManDetailCtrl get _ct => Ctrl.manDetail;
