part of '../_index.dart';

class ProfileUsername extends StatelessWidget {
  const ProfileUsername({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder.all(
      listenTo: _dt.rxUser,
      onWaiting: () => const Center(child: CircularProgressIndicator()),
      onError: (error, refreshError) => error,
      onData: (data) => data!.isAnonymous
          ? const Text('Anonymous')
          : data.displayName == null
              ? const SizedBox.shrink()
              : Center(
                  child: ListTile(
                    title: const Text(
                      'Nama pengguna',
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      '${data.displayName}',
                      textAlign: TextAlign.center,
                    ),
                    // leading: const Icon(Icons.person),
                  ),
                ),
    );
  }
}
