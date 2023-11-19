import 'dart:io';

import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import '../../../../dt_domains/_index.dart';
import '../../../../ui_widgets/space/_index.dart';
import '../../../../xtras/_index.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../app/_index.dart';
import '../../../../ui_widgets/_index.dart';

part 'a.admin_men_shoes_list.data.dart';
part 'b.admin_men_shoes_list.ctrl.dart';
part 'c.admin_men_shoes_list.view.dart';
part 'widgets/a.admin_men_shoes_list.appbar.dart';
part 'widgets/b.admin_men_shoes_list.fab.dart';
part 'widgets/c.admin_men_shoes_list.card.dart';
part 'widgets/d.admin_men_shoes_list.detail.dart';
part 'widgets/e.admin_men_shoes_list.detail_content.dart';
part 'widgets/f.admin_men_shoes_list.detail_tile.dart';
part 'widgets/g.admin_men_shoes_list.detail_tile_edit.dart';
part 'widgets/h.admin_men_shoes_list.detail_tile_edit_images.dart';
part 'widgets/i.admin_men_shoes_list.detail_tile_edit_name.dart';
part 'widgets/j.admin_men_shoes_list.detail_tile_edit_desc.dart';
part 'widgets/k.admin_men_shoes_list.detail_tile_edit_merk.dart';
part 'widgets/l.admin_men_shoes_list.detail_tile_edit_price.dart';
part 'widgets/m.admin_men_shoes_list.detail_tile_edit_quantity.dart';
part 'widgets/n.admin_men_shoes_list.detail_tile_edit_category.dart';
part 'widgets/o.admin_men_shoes_list.detail_tile_edit_sizes.dart';
part 'widgets/p.admin_men_shoes_list.detail_tile_edit_colors.dart';

AdminMenShoesListData get _dt => Data.adminMenShoesList.st;
AdminMenShoesListCtrl get _ct => Ctrl.adminMenShoesList;

MenServ get _sv => Serv.man;
MenProv get _pv => Prov.man.st;
