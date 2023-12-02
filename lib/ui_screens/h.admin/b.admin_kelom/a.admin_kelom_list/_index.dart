import 'dart:io';

import 'package:flutter/cupertino.dart';
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

part 'a.admin_kelom.data.dart';
part 'b.admin_kelom.ctrl.dart';
part 'c.admin_kelom.view.dart';
part 'widgets/a.admin_kelom.appbar.dart';
part 'widgets/b.admin_kelom.fab.dart';
part 'widgets/c.admin_kelom.card.dart';
part 'widgets/d.admin_kelom.detail.dart';
part 'widgets/e.admin_kelom.detail_content.dart';
part 'widgets/f.admin_kelom.detail_tile.dart';
part 'widgets/g.admin_kelom.detail_tile_edit.dart';
part 'widgets/h.admin_kelom.detail_tile_edit_images.dart';
part 'widgets/i.admin_kelom.detail_tile_edit_name.dart';
part 'widgets/j.admin_kelom.detail_tile_edit_desc.dart';
part 'widgets/k.admin_kelom.detail_tile_edit_merk.dart';
part 'widgets/l.admin_kelom.detail_tile_edit_price.dart';
part 'widgets/m.admin_kelom.detail_tile_edit_quantity.dart';
part 'widgets/n.admin_kelom.detail_tile_edit_category.dart';
part 'widgets/o.admin_kelom.detail_tile_edit_sizes.dart';
part 'widgets/p.admin_kelom.detail_tile_edit_colors.dart';
part 'widgets/q.admin_kelom.cards.dart';
part 'widgets/r.admin_kelom.loadmore.dart';

AdminWomenShoesListData get _dt => Data.adminWomenShoesList.st;
AdminWomenShoesListCtrl get _ct => Ctrl.adminWomenShoesList;

KelomServ get _sv => Serv.kelom;
KelomProv get _pv => Prov.kelom.st;
