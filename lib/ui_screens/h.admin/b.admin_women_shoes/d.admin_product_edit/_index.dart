import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/xtras/_index.dart';

import '../../../../app/_index.dart';

part 'a.admin_product_edit.data.dart';
part 'b.admin_product_edit.ctrl.dart';
part 'c.admin_product_edit.view.dart';
part 'widgets/a.admin_product_edit.appbar.dart';
part 'widgets/b.admin_product_edit.fab.dart';
part 'widgets/c.admin_product_edit.charlie.dart';
part 'widgets/d.admin_product_edit.delta.dart';
part 'widgets/e.admin_product_edit.echo.dart';

AdminProductEditData get _dt => Data.adminProductEdit.st;
AdminProductEditCtrl get _ct => Ctrl.adminProductEdit;

// static AdminProductEditCtrl get adminProductEdit => AdminProductEditCtrl();
// final _adminProductEditData = RM1.inj(AdminProductEditData(), Ctrl.adminProductEdit.init);
// static Injected<AdminProductEditData> get adminProductEdit => _adminProductEditData;
// export 'admin_product_edit/_index.dart';

