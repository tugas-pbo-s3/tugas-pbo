part of '_index.dart';

abstract class Serv {
  static AuthServ get auth => AuthServ();
  static UserServ get user => UserServ();
  static RoleServ get role => RoleServ();
  static CategoryServ get category => CategoryServ();
  static TypeServ get type => TypeServ();
  static KelomServ get kelom => KelomServ();
  static KebayaServ get kebaya => KebayaServ();
  static CartServ get cart => CartServ();
  static RokServ get rok => RokServ();
}
