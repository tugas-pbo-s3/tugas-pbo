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
              onData: (data) => Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Scaffold.of(context).closeEndDrawer();
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ),
                  Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            shape: const CircleBorder(),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.grey.withOpacity(0.2),
                              backgroundImage: data?.photoURL != null ? NetworkImage('${data?.photoURL}') : null,
                              child: data?.photoURL == null
                                  ? const Icon(
                                      Icons.person,
                                      size: 85,
                                      color: Colors.grey,
                                    )
                                  : null,
                            ),
                          ),
                          const SizedBoxH(10),
                          OnReactive(
                            () => data?.displayName == null
                                ? const SizedBox.shrink()
                                : Center(
                                    child: ListTile(
                                      title: const Text(
                                        'Nama Pengguna',
                                        textAlign: TextAlign.center,
                                      ),
                                      subtitle: Text(
                                        data?.displayName ?? 'anonimus',
                                        textAlign: TextAlign.center,
                                      ),
                                      // leading: const Icon(Icons.person),
                                    ),
                                  ),
                          ),
                          data!.email == null
                              ? const SizedBox.shrink()
                              : ListTile(
                                  title: const Text(
                                    'Email',
                                    textAlign: TextAlign.center,
                                  ),
                                  subtitle: Text(
                                    '${data.email}',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                          const SizedBoxH(20),
                          OutlinedButton.icon(
                            onPressed: () {
                              _ct.signOut();
                            },
                            icon: const Icon(Icons.logout),
                            label: const Text('Keluar'),
                          ),
                          const SizedBoxH(20),
                          TextButton(
                            onPressed: () {
                              _ct.deleteAccount();
                            },
                            child: const Text('Hapus Akun'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
