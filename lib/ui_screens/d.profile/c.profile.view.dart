part of '_index.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProfileAppbar(),
      ),
      // floatingActionButton: ProfileFab(),
      body: width < 600
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProfilePhoto(),
                  ProfileUsername(),
                  ProfileEmail(),
                  ProfileLogout(),
                ],
              ),
            )
          : Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBoxW(30),
                  const ProfilePhoto(),
                  const SizedBoxW(30),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: const [
                        ProfileUsername(),
                        ProfileEmail(),
                        ProfileLogout(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
