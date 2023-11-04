import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/xtras/_index.dart';

import '../../../../app/_index.dart';

part 'a.admin_product_input.data.dart';
part 'b.admin_product_input.ctrl.dart';
part 'c.admin_product_input.view.dart';
part 'widgets/a.admin_product_input.appbar.dart';
part 'widgets/b.admin_product_input.fab.dart';
part 'widgets/c.admin_product_input.charlie.dart';
part 'widgets/d.admin_product_input.delta.dart';
part 'widgets/e.admin_product_input.echo.dart';

AdminProductInputData get _dt => Data.adminProductInput.st;
AdminProductInputCtrl get _ct => Ctrl.adminProductInput;

// static AdminProductInputCtrl get adminProductInput => AdminProductInputCtrl();
// final _adminProductInputData = RM1.inj(AdminProductInputData(), Ctrl.adminProductInput.init);
// static Injected<AdminProductInputData> get adminProductInput => _adminProductInputData;
// export 'admin_product_input/_index.dart';

