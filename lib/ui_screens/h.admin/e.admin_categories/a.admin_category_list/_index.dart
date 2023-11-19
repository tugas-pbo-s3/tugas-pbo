import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';
import 'package:uuid/uuid.dart';

import '../../../../app/_index.dart';
import '../../../../ui_widgets/space/_index.dart';
import '../../../../ui_widgets/tile/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.admin_category_list.data.dart';
part 'b.admin_category_list.ctrl.dart';
part 'c.admin_category_list.view.dart';
part 'widgets/a.admin_category_list.appbar.dart';
part 'widgets/b.admin_category_list.fab.dart';
part 'widgets/c.admin_category_list.card.dart';
part 'widgets/d.admin_category_list.detail.dart';
part 'widgets/e.admin_category_list.detail_content.dart';
part 'widgets/f.admin_category_list.detail_content_tile.dart';

AdminCategoryListData get _dt => Data.adminCategoryList.st;
AdminCategoryListCtrl get _ct => Ctrl.adminCategoryList;
CategoryServ get _sv => Serv.category;
// static AdminCategoryListCtrl get adminCategoryList => AdminCategoryListCtrl();
// final _adminCategoryListData = RM1.inj(AdminCategoryListData(), Ctrl.adminCategoryList.init);
// static Injected<AdminCategoryListData> get adminCategoryList => _adminCategoryListData;
// export 'admin_category_list/_index.dart';

