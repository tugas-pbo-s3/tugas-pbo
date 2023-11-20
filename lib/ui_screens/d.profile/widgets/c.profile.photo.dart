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
      onData: (data) => SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xFFF5F6F9),
              backgroundImage: data?.photoURL == null
                  ? const NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/tugas-pbo-fc0db.appspot.com/o/profile-icon-null.png?alt=media&token=56113b7f-0b3c-45a3-bc97-60807d7f261f')
                  : NetworkImage(
                      '${data!.photoURL}',
                    ),
            ),
            // Positioned(
            //   right: 0,
            //   bottom: 0,
            //   child: SizedBox(
            //     height: 46,
            //     width: 46,
            //     child: CircleAvatar(
            //       radius: 30,
            //       backgroundColor: Colors.black54,
            //       child: IconButton(
            //         color: const Color(0xFFF5F6F9),
            //         onPressed: () {},
            //         icon: const Icon(Icons.camera_enhance),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
