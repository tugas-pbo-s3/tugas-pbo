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

part 'a.admin_kelom_input.data.dart';
part 'b.admin_kelom_input.ctrl.dart';
part 'c.admin_kelom_input.view.dart';
part 'widgets/a.admin_kelom_input.appbar.dart';
part 'widgets/b.admin_kelom_input.name.dart';
part 'widgets/c.admin_kelom_input.price.dart';
part 'widgets/d.admin_kelom_input.description.dart';
part 'widgets/e.admin_kelom_input.quantity.dart';
part 'widgets/f.admin_kelom_input.merk.dart';
part 'widgets/g.admin_kelom_input.category.dart';
part 'widgets/h.admin_kelom_input.size.dart';
part 'widgets/i.admin_kelom_input.color.dart';
part 'widgets/j.admin_kelom_input.images.dart';
part 'widgets/k.admin_kelom_input.images_preview.dart';
part 'widgets/l.admin_kelom_input.submit.dart';

AdminKelomInputData get _dt => Data.adminKelomInput.st;
AdminKelomInpurCtrl get _ct => Ctrl.adminWomenShoesInput;
