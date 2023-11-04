import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.search.data.dart';
part 'b.search.ctrl.dart';
part 'c.search.view.dart';
part 'widgets/a.search.appbar.dart';
part 'widgets/b.search.fab.dart';
part 'widgets/c.search.charlie.dart';
part 'widgets/d.search.delta.dart';
part 'widgets/e.search.echo.dart';

SearchData get _dt => Data.search.st;
SearchCtrl get _ct => Ctrl.search;
