part of '../_index.dart';

class ProfileWeb extends StatelessWidget {
  const ProfileWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBuilder.all(
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
                  backgroundImage: data?.photoURL == null ? NetworkImage('${data?.photoURL}') : null,
                ),
              ],
            ),
          ),
          const SizedBoxH(30),
          ListTile(
            title: Text(data?.displayName ?? 'nullname'),
            leading: const Icon(Icons.person),
          ),
          ListTile(
            title: Text(data?.email ?? 'nullemail'),
            leading: const Icon(Icons.email),
          ),
          ListTile(
            leading: TextButton.icon(
              onPressed: () {
                nav.to(Routes.login);
              },
              icon: const Icon(Icons.logout),
              label: const Text('Logout'),
            ),
          ),
        ],
      ),
    );
  }
}
