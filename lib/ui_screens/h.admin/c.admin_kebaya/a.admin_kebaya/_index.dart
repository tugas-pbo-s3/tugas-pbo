import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import '../../../../dt_domains/_index.dart';
import '../../../../ui_widgets/space/_index.dart';
import '../../../../xtras/_index.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../app/_index.dart';
import '../../../../ui_widgets/_index.dart';

part 'a.admin_kebaya.data.dart';
part 'b.admin_kebaya.ctrl.dart';
part 'c.admin_kebaya.view.dart';
part 'widgets/a.admin_kebaya.appbar.dart';
part 'widgets/b.admin_kebaya.fab.dart';
part 'widgets/c.admin_kebaya.card.dart';
part 'widgets/d.admin_kebaya.detail.dart';
part 'widgets/e.admin_kebaya.detail_content.dart';
part 'widgets/f.admin_kebaya.detail_tile.dart';
part 'widgets/g.admin_kebaya.detail_tile_edit.dart';
part 'widgets/h.admin_kebaya.detail_tile_edit_images.dart';
part 'widgets/i.admin_kebaya.detail_tile_edit_name.dart';
part 'widgets/j.admin_kebaya.detail_tile_edit_desc.dart';
part 'widgets/k.admin_kebaya.detail_tile_edit_merk.dart';
part 'widgets/l.admin_kebaya.detail_tile_edit_price.dart';
part 'widgets/m.admin_kebaya.detail_tile_edit_quantity.dart';
part 'widgets/n.admin_kebaya.detail_tile_edit_category.dart';
part 'widgets/o.admin_kebaya.detail_tile_edit_sizes.dart';
part 'widgets/p.admin_kebaya.detail_tile_edit_colors.dart';
part 'widgets/q.admin_kebaya.cards.dart';
part 'widgets/r.admin_kebaya.loadmore.dart';

AdminMenShoesListData get _dt => Data.adminMenShoesList.st;
AdminMenShoesListCtrl get _ct => Ctrl.adminMenShoesList;

KebayaServ get _sv => Serv.kebaya;
KebayaProv get _pv => Prov.kebaya.st;
