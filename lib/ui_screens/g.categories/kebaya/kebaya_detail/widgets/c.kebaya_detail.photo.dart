part of '../_index.dart';

class KebayaDetailPhoto extends StatelessWidget {
  const KebayaDetailPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return OnBuilder<Kebaya?>.all(
      listenTo: _dt.rxProductFuture,
      onWaiting: () => const CircularProgressIndicator(),
      onError: (error, refreshError) => error,
      onData: (data) => Container(
        alignment: Alignment.topCenter,
        width: width >= 600 ? 500 : null,
        height: width >= 600 ? 400 : 300,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: NetworkImage(data?.imageUrl?.values.firstOrNull ??
                  'https://firebasestorage.googleapis.com/v0/b/tugas-pbo-fc0db.appspot.com/o/Image_not_available.png?alt=media&token=8e87ed45-9177-4945-845c-8cce5ad3d9df'),
              fit: BoxFit.contain),
        ),
      ),
    );
  }
}