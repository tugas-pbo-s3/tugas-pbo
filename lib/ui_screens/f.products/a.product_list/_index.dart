// ignore: unused_import
// import 'dart:ffi' as prefix;

import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/ui_screens/_index.dart';
import 'package:tugas_pbo/ui_screens/g.categories/women/a.women/_index.dart';
import 'package:tugas_pbo/ui_widgets/space/_index.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_list.data.dart';
part 'b.product_list.ctrl.dart';
part 'c.product_list.view.dart';
part 'widgets/a.product_list.appbar.dart';
part 'widgets/b.product_list.fab.dart';
part 'widgets/c.product_list.tab_bar.dart';
part 'widgets/d.product_list.leading.dart';
part 'widgets/e.product_list.action.dart';
part 'widgets/f.product_list.web.dart';
part 'widgets/g.product_list.phone.dart';
part 'widgets/h.profile.web.dart';

ProductListData get _dt => Data.productList.st;
ProductListCtrl get _ct => Ctrl.productList;
