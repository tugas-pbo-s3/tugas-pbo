part of '../_index.dart';

class ProfileEmail extends StatelessWidget {
  const ProfileEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder.all(
      listenTo: _dt.rxUser,
      onWaiting: () => const Center(child: CircularProgressIndicator()),
      onError: (error, refreshError) => error,
      onData: (data) => ListTile(
        title: Text(data?.email ?? 'nullemail'),
        leading: const Icon(Icons.email),
      ),
    );
  }
}
