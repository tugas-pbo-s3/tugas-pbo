part of '_index.dart';

abstract class Serv {
  static AuthServ get auth => AuthServ();
  static UserServ get user => UserServ();
  static RoleServ get role => RoleServ();
  static ProductServ get product => ProductServ();
  static CategoryServ get category => CategoryServ();
  static TypeServ get type => TypeServ();
  static WomenServ get women => WomenServ();
  static MenServ get man => MenServ();
}
