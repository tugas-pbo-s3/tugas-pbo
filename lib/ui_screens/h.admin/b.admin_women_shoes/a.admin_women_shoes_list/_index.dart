import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';
import 'package:tugas_pbo/ui_widgets/space/_index.dart';
import 'package:tugas_pbo/xtras/_index.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../app/_index.dart';
import '../../../../ui_widgets/_index.dart';

part 'a.admin_women_shoes_list.data.dart';
part 'b.admin_women_shoes_list.ctrl.dart';
part 'c.admin_women_shoes_list.view.dart';
part 'widgets/a.admin_women_shoes_list.appbar.dart';
part 'widgets/b.admin_women_shoes_list.fab.dart';
part 'widgets/c.admin_women_shoes_list.card.dart';
part 'widgets/d.admin_women_shoes_list.detail.dart';
part 'widgets/e.admin_women_shoes_list.detail_content.dart';
part 'widgets/f.admin_women_shoes_list.detail_tile copy.dart';
part 'widgets/f.admin_women_shoes_list.detail_tile.dart';

AdminWomenShoesListData get _dt => Data.adminProductList.st;
AdminWomenShoesListCtrl get _ct => Ctrl.adminProductList;

WomenServ get _sv => Serv.women;
