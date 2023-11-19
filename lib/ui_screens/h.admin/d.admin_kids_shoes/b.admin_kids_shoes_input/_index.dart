import 'dart:io';

import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/ui_widgets/space/_index.dart';
import 'package:tugas_pbo/xtras/_index.dart';
import 'package:uuid/uuid.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../app/_index.dart';
import '../../../../dt_domains/_index.dart';

part 'a.admin_kids_shoes_input.data.dart';
part 'b.admin_kids_shoes_input.ctrl.dart';
part 'c.admin_kids_shoes_input.view.dart';
part 'widgets/a.admin_kids_shoes_input.appbar.dart';
part 'widgets/b.admin_kids_shoes_input.name.dart';
part 'widgets/c.admin_kids_shoes_input.price.dart';
part 'widgets/d.admin_kids_shoes_input.description.dart';
part 'widgets/e.admin_kids_shoes_input.quantity.dart';
part 'widgets/f.admin_kids_shoes_input.merk.dart';
part 'widgets/g.admin_kids_shoes_input.category.dart';
part 'widgets/h.admin_kids_shoes_input.size.dart';
part 'widgets/i.admin_kids_shoes_input.color.dart';
part 'widgets/j.admin_kids_shoes_input.images.dart';
part 'widgets/k.admin_kids_shoes_input.images_preview.dart';
part 'widgets/l.admin_kids_shoes_input.submit.dart';

AdminKidsShoesInputData get _dt => Data.adminKidsShoesInput.st;
AdminKidsShoesInputCtrl get _ct => Ctrl.adminKidsShoesInput;

KidsServ get _sv => Serv.kids;
KidsProv get _pv => Prov.kids.st;// static AdminProductInputCtrl get adminProductInput => AdminProductInputCtrl();
// final _adminProductInputData = RM1.inj(AdminProductInputData(), Ctrl.adminProductInput.init);
// static Injected<AdminProductInputData> get adminProductInput => _adminProductInputData;
// export 'admin_product_input/_index.dart';

