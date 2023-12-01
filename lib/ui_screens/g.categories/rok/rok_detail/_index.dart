import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';
import 'package:tugas_pbo/ui_widgets/space/_index.dart';

import '../../../../app/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.rok_detail.data.dart';
part 'b.rok_detail.ctrl.dart';
part 'c.rok_detail.view.dart';
part 'widgets/a.rok_detail.appbar.dart';
part 'widgets/b.rok_detail.fab.dart';
part 'widgets/c.rok_detail.photo.dart';
part 'widgets/d.wd.desc.phone.dart';
part 'widgets/d.wd.desc.web.dart';
part 'widgets/e.rok_detail.bottomsheet.dart';
part 'widgets/g.rok_detail.color.dart';
part 'widgets/f.rok_detail.size.dart';
part 'widgets/h.rok_detail.qty.dart';
part 'widgets/i.rok_detail.addtocart.dart';

RokDetailData get _dt => Data.rokDetail.st;
RokDetailCtrl get _ct => Ctrl.rokDetail;

RokProv get _pv => Prov.rok.st;
RokServ get _sv => Serv.rok;
CartProv get _pvCart => Prov.cart.st;
