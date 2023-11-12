import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/app/utils/_index.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';
import 'package:tugas_pbo/dt_sources/firebase/_index.dart';
import 'package:tugas_pbo/xtras/_index.dart';

part 'a.kids.prov.dart';
part 'b.kids.serv.dart';
part 'c.kids.repo.dart';
part 'd.kids.repo.mock.dart';

KidsProv get _pv => Prov.kids.st;
KidsServ get _sv => Serv.kids;
KidsRepo get _rp => Repo.kids.st;

ProductServ get _svProduct => Serv.product;
