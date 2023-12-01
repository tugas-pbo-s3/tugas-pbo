import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/app/utils/_index.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';
import 'package:tugas_pbo/dt_sources/firebase/_index.dart';
import 'package:tugas_pbo/xtras/_index.dart';

part 'a.rok.prov.dart';
part 'b.rok.serv.dart';
part 'c.rok.repo.dart';
part 'd.rok.repo.mock.dart';

RokProv get _pv => Prov.rok.st;
RokServ get _sv => Serv.rok;
RokRepo get _rp => Repo.rok.st;

// ProductServ get _svProduct => Serv.product;
CartServ get _svCart => Serv.cart;
