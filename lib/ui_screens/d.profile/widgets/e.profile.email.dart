part of '../_index.dart';

class ProfileEmail extends StatelessWidget {
  const ProfileEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _dt.rxUser.st!.isAnonymous
        ? const SizedBox.shrink()
        : OnBuilder.all(
            listenTo: _dt.rxUser,
            onWaiting: () => const Center(child: CircularProgressIndicator()),
            onError: (error, refreshError) => error,
            onData: (data) => ListTile(
              title: const Text(
                'Email',
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                '${data?.email}',
                textAlign: TextAlign.center,
              ),
            ),
          );
  }
}
