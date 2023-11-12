import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/app/utils/_index.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';
import 'package:tugas_pbo/dt_sources/firebase/_index.dart';
import 'package:tugas_pbo/xtras/_index.dart';

part 'a.men.prov.dart';
part 'b.men.serv.dart';
part 'c.men.repo.dart';
part 'd.men.repo.mock.dart';

MenProv get _pv => Prov.man.st;
MenServ get _sv => Serv.man;
MenRepo get _rp => Repo.man.st;

ProductServ get _svProduct => Serv.product;
