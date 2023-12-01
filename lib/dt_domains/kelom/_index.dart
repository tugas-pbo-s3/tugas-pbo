import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';

import '../../app/_index.dart';
import '../../dt_sources/_index.dart';
import '../../xtras/_index.dart';

part 'a.kelom.prov.dart';
part 'b.kelom.serv.dart';
part 'c.kelom.repo.dart';
part 'd.kelom.repo.mock.dart';

KelomProv get _pv => Prov.kelom.st;
KelomServ get _sv => Serv.kelom;
KelomRepo get _rp => Repo.kelom.st;
CartServ get _svCart => Serv.cart;
