import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:tugas_pbo/app/utils/_index.dart';
import 'package:tugas_pbo/dt_domains/_index.dart';
import 'package:tugas_pbo/dt_sources/firebase/_index.dart';
import 'package:tugas_pbo/xtras/_index.dart';

part 'a.kebaya.prov.dart';
part 'b.kebaya.serv.dart';
part 'c.kebaya.repo.dart';
part 'd.kebaya.repo.mock.dart';

KebayaProv get _pv => Prov.kebaya.st;
KebayaServ get _sv => Serv.kebaya;
KebayaRepo get _rp => Repo.kebaya.st;

// ProductServ get _svProduct => Serv.product;
CartServ get _svCart => Serv.cart;
