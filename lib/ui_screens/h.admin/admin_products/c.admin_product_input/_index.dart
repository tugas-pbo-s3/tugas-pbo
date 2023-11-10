import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/ui_widgets/space/_index.dart';
import 'package:tugas_pbo/xtras/_index.dart';
import 'package:uuid/uuid.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../app/_index.dart';
import '../../../../dt_domains/_index.dart';

part 'a.admin_product_input.data.dart';
part 'b.admin_product_input.ctrl.dart';
part 'c.admin_product_input.view.dart';
part 'widgets/a.admin_product_input.appbar.dart';
part 'widgets/b.admin_product_input.fab.dart';
part 'widgets/c.admin_product_input.name.dart';
part 'widgets/d.admin_product_input.price.dart';
part 'widgets/e.admin_product_input.description.dart';
part 'widgets/f.admin_product_input.quantity.dart';
part 'widgets/g.admin_product_input.merk.dart';
part 'widgets/h.admin_product_input.category.dart';
part 'widgets/i.admin_product_input.size.dart';
part 'widgets/j.admin_product_input.color.dart';
part 'widgets/k.admin_product_input.images.dart';
part 'widgets/l.admin_product_input.submit.dart';

AdminProductInputData get _dt => Data.adminProductInput.st;
AdminProductInputCtrl get _ct => Ctrl.adminProductInput;

// static AdminProductInputCtrl get adminProductInput => AdminProductInputCtrl();
// final _adminProductInputData = RM1.inj(AdminProductInputData(), Ctrl.adminProductInput.init);
// static Injected<AdminProductInputData> get adminProductInput => _adminProductInputData;
// export 'admin_product_input/_index.dart';

