part of '_index.dart';

class ProfileData {
  final rxTitle = 'Profile'.inj();

  final rxInt = 0.inj();

  final rxUser = Prov.auth.st.rxUser;
}
