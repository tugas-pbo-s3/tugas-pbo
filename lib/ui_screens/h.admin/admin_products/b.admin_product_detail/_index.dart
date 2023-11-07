import 'dart:math';

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';
import 'package:tugas_pbo/xtras/_index.dart';

import '../../../../app/_index.dart';

part 'a.admin_product_detail.data.dart';
part 'b.admin_product_detail.ctrl.dart';
part 'c.admin_product_detail.view.dart';
part 'widgets/a.admin_product_detail.appbar.dart';
part 'widgets/b.admin_product_detail.fab.dart';
part 'widgets/c.admin_product_detail.charlie.dart';
part 'widgets/d.admin_product_detail.delta.dart';
part 'widgets/e.admin_product_detail.echo.dart';

AdminProductDetailData get _dt => Data.adminProductDetail.st;
AdminProductDetailCtrl get _ct => Ctrl.adminProductDetail;

// static AdminProductDetailCtrl get adminProductDetail => AdminProductDetailCtrl();
// final _adminProductDetailData = RM1.inj(AdminProductDetailData(), Ctrl.adminProductDetail.init);
// static Injected<AdminProductDetailData> get adminProductDetail => _adminProductDetailData;
// export 'admin_product_detail/_index.dart';

