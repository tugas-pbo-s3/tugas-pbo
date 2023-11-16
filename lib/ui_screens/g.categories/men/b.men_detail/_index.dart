import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';
import 'package:tugas_pbo/ui_widgets/space/_index.dart';

import '../../../../app/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.man_detail.data.dart';
part 'b.man_detail.ctrl.dart';
part 'c.man_detail.view.dart';
part 'widgets/a.man_detail.appbar.dart';
part 'widgets/b.man_detail.fab.dart';
part 'widgets/c.man_detail.photo.dart';
part 'widgets/d.wd.desc.phone.dart';
part 'widgets/d.wd.desc.web.dart';
part 'widgets/e.men_detail.bottomsheet.dart';
part 'widgets/g.men_detail.color.dart';
part 'widgets/f.men_detail.size.dart';
part 'widgets/h.men_detail.qty.dart';
part 'widgets/i.men_detail.addtocart.dart';

ManDetailData get _dt => Data.manDetail.st;
ManDetailCtrl get _ct => Ctrl.manDetail;
MenProv get _pv => Prov.man.st;
MenServ get _sv => Serv.man;
CartProv get _pvCart => Prov.cart.st;
