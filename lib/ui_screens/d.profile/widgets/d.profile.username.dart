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
      onData: (data) => ListTile(
        title: Text(data?.displayName ?? 'nullname'),
        leading: const Icon(Icons.person),
      ),
    );
  }
}
