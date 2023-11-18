import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';
import 'package:tugas_pbo/ui_widgets/space/_index.dart';

import '../../../app/_index.dart';
import '../../../xtras/_index.dart';

part 'a.product_detail.data.dart';
part 'b.product_detail.ctrl.dart';
part 'c.product_detail.view.dart';
part 'widgets/a.product_detail.appbar.dart';
part 'widgets/b.product_detail.fab.dart';
part 'widgets/c.product_detail.photo.dart';
part 'widgets/d.product_detail.desc.dart';
part 'widgets/e.product_detail.bottomsheet.dart';

ProductDetailData get _dt => Data.productDetail.st;
WomenProv get _pv => Prov.product.st;
// ProductDetailCtrl get _ct => Ctrl.productDetail;
