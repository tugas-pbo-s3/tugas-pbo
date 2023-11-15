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
          fit: StackFit.expand,
          children: [
            CircleAvatar(
              backgroundColor: const Color(0xFFF5F6F9),
              backgroundImage: data?.photoURL == null ? NetworkImage('${data?.photoURL}') : null,
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
