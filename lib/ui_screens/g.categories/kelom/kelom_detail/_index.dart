import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/ui_widgets/space/_index.dart';

import '../../../../app/_index.dart';
import '../../../../dt_domains/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.kelom_detail.data.dart';
part 'b.kelom_detail.ctrl.dart';
part 'c.kelom_detail.view.dart';
part 'widgets/a.kelom_detail.appbar.dart';
part 'widgets/b.kelom_detail.fab.dart';
part 'widgets/c.kelom_detail.photo.dart';
part 'widgets/d.wd.desc.phone.dart';
part 'widgets/d.wd.desc.web.dart';
part 'widgets/e.kelom_detail.bottomsheet.dart';
part 'widgets/g.kelom_detail.color.dart';
part 'widgets/f.kelom_detail.size.dart';
part 'widgets/h.kelom_detail.qty.dart';
part 'widgets/i.kelom_detail.addtocart.dart';

KelomDetailData get _dt => Data.kelomDetail.st;
KelomDetailCtrl get _ct => Ctrl.womenDetail;
KelomProv get _pv => Prov.kelom.st;
CartProv get _pvCart => Prov.cart.st;
KelomServ get _sv => Serv.kelom;
