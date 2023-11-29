part of '../_index.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder.all(
      listenTo: _dt.rxUser,
      onWaiting: () => const CircularProgressIndicator(),
      onError: (error, refreshError) => error,
      onData: (data) => Card(
        shape: const CircleBorder(),
        child: CircleAvatar(
          radius: 80,
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
    );
  }
}
