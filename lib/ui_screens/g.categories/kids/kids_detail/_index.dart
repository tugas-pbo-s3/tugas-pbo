import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';
import 'package:tugas_pbo/ui_widgets/space/_index.dart';

import '../../../../app/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.kids_detail.data.dart';
part 'b.kids_detail.ctrl.dart';
part 'c.kids_detail.view.dart';
part 'widgets/a.kids_detail.appbar.dart';
part 'widgets/b.kids_detail.fab.dart';
part 'widgets/c.kids_detail.photo.dart';
part 'widgets/d.wd.desc.phone.dart';
part 'widgets/d.wd.desc.web.dart';
part 'widgets/e.kids_detail.bottomsheet.dart';
part 'widgets/g.kids_detail.color.dart';
part 'widgets/f.kids_detail.size.dart';
part 'widgets/h.kids_detail.qty.dart';
part 'widgets/i.kids_detail.addtocart.dart';

KidsDetailData get _dt => Data.kidsDetail.st;
KidsDetailCtrl get _ct => Ctrl.kidsDetail;

KidsProv get _pv => Prov.kids.st;
KidsServ get _sv => Serv.kids;
CartProv get _pvCart => Prov.cart.st;
