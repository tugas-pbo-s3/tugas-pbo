import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/_models/_index.dart';

import '../../../../app/_index.dart';
import '../../../../dt_domains/cart/_index.dart';
import '../../../../dt_domains/kebaya/_index.dart';
import '../../../../ui_widgets/space/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.kebaya_detail.data.dart';
part 'b.kebaya_detail.ctrl.dart';
part 'c.kebaya_detail.view.dart';
part 'widgets/a.kebaya_detail.appbar.dart';
part 'widgets/b.kebaya_detail.fab.dart';
part 'widgets/c.kebaya_detail.photo.dart';
part 'widgets/d.wd.desc.phone.dart';
part 'widgets/d.wd.desc.web.dart';
part 'widgets/e.kebaya_detail.bottomsheet.dart';
part 'widgets/g.kebaya_detail.color.dart';
part 'widgets/f.kebaya_detail.size.dart';
part 'widgets/h.kebaya_detail.qty.dart';
part 'widgets/i.kebaya_detail.addtocart.dart';

KebayaDetailData get _dt => Data.kebayaDetail.st;
KebayaDetailCtrl get _ct => Ctrl.kebayaDetail;

KebayaProv get _pv => Prov.kebaya.st;
KebayaServ get _sv => Serv.kebaya;
CartProv get _pvCart => Prov.keranjang.st;
