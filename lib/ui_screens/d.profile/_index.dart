import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../app/_index.dart';
import '../../xtras/_index.dart';

part 'a.profile.data.dart';
part 'b.profile.ctrl.dart';
part 'c.profile.view.dart';
part 'widgets/a.profile.appbar.dart';
part 'widgets/b.profile.fab.dart';
part 'widgets/c.profile.charlie.dart';
part 'widgets/d.profile.delta.dart';
part 'widgets/e.profile.echo.dart';

ProfileData get _dt => Data.profile.st;
ProfileCtrl get _ct => Ctrl.profile;
