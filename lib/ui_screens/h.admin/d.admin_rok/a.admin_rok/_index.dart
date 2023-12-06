import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:shimmer/shimmer.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:uuid/uuid.dart';
import '../../../../dt_domains/_index.dart';
import '../../../../ui_widgets/space/_index.dart';
import '../../../../xtras/_index.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../app/_index.dart';
import '../../../../ui_widgets/_index.dart';

part 'a.admin_rok.data.dart';
part 'b.admin_rok.ctrl.dart';
part 'c.admin_rok.view.dart';
part 'widgets/a.admin_rok.appbar.dart';
part 'widgets/b.admin_rok.fab.dart';
part 'widgets/c.admin_rok.card.dart';
part 'widgets/d.admin_rok.detail.dart';
part 'widgets/e.admin_rok.detail_content.dart';
part 'widgets/f.admin_rok.detail_tile.dart';
part 'widgets/g.admin_rok.detail_tile_edit.dart';
part 'widgets/h.admin_rok.detail_tile_edit_images.dart';
part 'widgets/i.admin_rok.detail_tile_edit_name.dart';
part 'widgets/j.admin_rok.detail_tile_edit_desc.dart';
part 'widgets/k.admin_rok.detail_tile_edit_merk.dart';
part 'widgets/l.admin_rok.detail_tile_edit_price.dart';
part 'widgets/m.admin_rok.detail_tile_edit_quantity.dart';
part 'widgets/n.admin_rok.detail_tile_edit_category.dart';
part 'widgets/o.admin_rok.detail_tile_edit_sizes.dart';
part 'widgets/p.admin_rok.detail_tile_edit_colors.dart';
part 'widgets/q.admin_rok.cards.dart';
part 'widgets/r.admin_rok.loadmore.dart';

AdminRokData get _dt => Data.adminRok.st;
AdminRokCtrl get _ct => Ctrl.adminKidsShoesList;

RokServ get _sv => Serv.rok;
RokProv get _pv => Prov.rok.st;
