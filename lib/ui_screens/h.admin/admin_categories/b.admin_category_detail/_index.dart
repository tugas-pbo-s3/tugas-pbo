import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../../../../app/_index.dart';
import '../../../../dt_domains/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.admin_category_detail.data.dart';
part 'b.admin_category_detail.ctrl.dart';
part 'c.admin_category_detail.view.dart';
part 'widgets/a.admin_category_detail.appbar.dart';
part 'widgets/b.admin_category_detail.fab.dart';
part 'widgets/c.admin_category_detail.charlie.dart';
part 'widgets/d.admin_category_detail.delta.dart';
part 'widgets/e.admin_category_detail.echo.dart';

AdminCategoryDetailData get _dt => Data.adminCategoryDetail.st;
AdminCategoryDetailCtrl get _ct => Ctrl.adminCategoryDetail;

// static AdminCategoryDetailCtrl get adminCategoryDetail => AdminCategoryDetailCtrl();
// final _adminCategoryDetailData = RM1.inj(AdminCategoryDetailData(), Ctrl.adminCategoryDetail.init);
// static Injected<AdminCategoryDetailData> get adminCategoryDetail => _adminCategoryDetailData;
// export 'admin_category_detail/_index.dart';

