import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/_models/_index.dart';
import 'package:tugas_pbo/dt_domains/cart/_index.dart';
import 'package:tugas_pbo/dt_domains/women/_index.dart';
import 'package:tugas_pbo/ui_widgets/space/_index.dart';

import '../../../../app/_index.dart';
import '../../../../xtras/_index.dart';

part 'a.women_detail.data.dart';
part 'b.women_detail.ctrl.dart';
part 'c.women_detail.view.dart';
part 'widgets/a.women_detail.appbar.dart';
part 'widgets/b.women_detail.fab.dart';
part 'widgets/c.women_detail.photo.dart';
part 'widgets/d.women_detail.desc.dart';
part 'widgets/e.women_detail.bottomsheet.dart';

WomenDetailData get _dt => Data.womenDetail.st;
WomenDetailCtrl get _ct => Ctrl.womenDetail;
WomenProv get _pv => Prov.women.st;
CartProv get _pvCart => Prov.cart.st;
WomenServ get _sv => Serv.women;
