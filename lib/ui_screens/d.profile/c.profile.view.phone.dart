part of '_index.dart';

class ProfileViewPhone extends StatelessWidget {
  const ProfileViewPhone({super.key});

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProfileAppbar(),
      ),
      // floatingActionButton: ProfileFab(),
      body: OnReactive(
        () => _dt.rxUser.st == null
            ? const SizedBox.shrink()
            : const Center(
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
      ),
    );
  }
}
