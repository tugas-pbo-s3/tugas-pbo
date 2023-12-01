import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/ui_widgets/space/_index.dart';
import 'package:tugas_pbo/xtras/_index.dart';
import 'package:uuid/uuid.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../app/_index.dart';
import '../../../../dt_domains/_index.dart';

part 'a.admin_men_shoes_input.data.dart';
part 'b.admin_men_shoes_input.ctrl.dart';
part 'c.admin_men_shoes_input.view.dart';
part 'widgets/a.admin_men_shoes_input.appbar.dart';
part 'widgets/b.admin_men_shoes_input.name.dart';
part 'widgets/c.admin_men_shoes_input.price.dart';
part 'widgets/d.admin_men_shoes_input.description.dart';
part 'widgets/e.admin_men_shoes_input.quantity.dart';
part 'widgets/f.admin_men_shoes_input.merk.dart';
part 'widgets/g.admin_men_shoes_input.category.dart';
part 'widgets/h.admin_men_shoes_input.size.dart';
part 'widgets/i.admin_men_shoes_input.color.dart';
part 'widgets/j.admin_men_shoes_input.images.dart';
part 'widgets/k.admin_men_shoes_input.images_preview.dart';
part 'widgets/l.admin_men_shoes_input.submit.dart';

AdminMenShoesInputData get _dt => Data.adminMenShoesInput.st;
AdminMenShoesInputCtrl get _ct => Ctrl.adminMenShoesInput;

KebayaServ get _sv => Serv.kebaya;
KebayaProv get _pv => Prov.kebaya.st;// static AdminProductInputCtrl get adminProductInput => AdminProductInputCtrl();
// final _adminProductInputData = RM1.inj(AdminProductInputData(), Ctrl.adminProductInput.init);
// static Injected<AdminProductInputData> get adminProductInput => _adminProductInputData;
// export 'admin_product_input/_index.dart';

