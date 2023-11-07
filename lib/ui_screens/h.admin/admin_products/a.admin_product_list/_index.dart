import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';
import 'package:tugas_pbo/xtras/_index.dart';

import '../../../../app/_index.dart';

part 'a.admin_product_list.data.dart';
part 'b.admin_product_list.ctrl.dart';
part 'c.admin_product_list.view.dart';
part 'widgets/a.admin_product_list.appbar.dart';
part 'widgets/b.admin_product_list.fab.dart';
part 'widgets/c.admin_product_list.card.dart';
part 'widgets/d.admin_product_list.delta.dart';
part 'widgets/e.admin_product_list.echo.dart';

AdminProductListData get _dt => Data.adminProductList.st;
AdminProductListCtrl get _ct => Ctrl.adminProductList;

// static AdminProductListCtrl get adminProductList => AdminProductListCtrl();
// final _adminProductListData = RM1.inj(AdminProductListData(), Ctrl.adminProductList.init);
// static Injected<AdminProductListData> get adminProductList => _adminProductListData;
// export 'admin_product_list/_index.dart';

