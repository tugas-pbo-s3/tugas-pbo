part of '../_index.dart';

class ProfileWeb extends StatelessWidget {
  const ProfileWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => _dt.rxUser.st == null
          ? const SizedBox.shrink()
          : OnBuilder.all(
              listenTo: _dt.rxUser,
              onWaiting: () => const Center(child: CircularProgressIndicator()),
              onError: (error, refreshError) => error,
              onData: (data) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 115,
                    width: 115,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xFFF5F6F9),
                          backgroundImage: data?.photoURL == null
                              ? const NetworkImage(
                                  'https://firebasestorage.googleapis.com/v0/b/tugas-pbo-fc0db.appspot.com/o/profile-icon-null.png?alt=media&token=56113b7f-0b3c-45a3-bc97-60807d7f261f')
                              : NetworkImage('${data?.photoURL}'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBoxH(30),
                  ListTile(
                    title: Text(data?.displayName ?? 'anonymous'),
                    leading: const Icon(Icons.person),
                  ),
                  data!.email == null
                      ? const SizedBox.shrink()
                      : ListTile(
                          title: Text('${data.email}'),
                          leading: const Icon(Icons.email),
                        ),
                  ListTile(
                    leading: TextButton.icon(
                      onPressed: () {
                        _ct.signOut();
                      },
                      icon: const Icon(Icons.logout),
                      label: const Text('Logout'),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
