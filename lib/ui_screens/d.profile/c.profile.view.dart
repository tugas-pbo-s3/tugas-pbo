part of '_index.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProfileAppbar(),
      ),
      floatingActionButton: ProfileFab(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfilePhoto(),
            ProfileUsername(),
            ProfileEmail(),
            ProfileLogout(),
          ],
        ),
      ),
    );
  }
}
