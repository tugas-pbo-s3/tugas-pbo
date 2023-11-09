import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/app/utils/_index.dart';
import 'package:tugas_pbo/dt_domains/_models/_index.dart';
import 'package:tugas_pbo/dt_sources/firebase/_index.dart';
import 'package:tugas_pbo/xtras/_index.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';

part 'a.women.prov.dart';
part 'b.women.serv.dart';
part 'c.women.repo.dart';
part 'd.women.repo.mock.dart';

WomenProv get _pv => Prov.women.st;
WomenServ get _sv => Serv.women;
WomenRepo get _rp => Repo.women.st;
