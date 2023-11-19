part of '../_index.dart';

class KidsDetailPhoto extends StatelessWidget {
  KidsDetailPhoto({
    super.key,
  });

  final images = _dt.rxProductFuture.st!.imageUrl;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return OnBuilder<KidsShoes?>.all(
      listenTo: _dt.rxProductFuture,
      onWaiting: () => const CircularProgressIndicator(),
      onError: (error, refreshError) => error,
      onData: (data) => Container(
        alignment: Alignment.topCenter,
        width: width >= 600 ? 500 : null,
        height: width >= 600 ? 400 : 200,
        decoration: BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
              image: NetworkImage(data?.imageUrl?.values.firstOrNull ??
                  'https://firebasestorage.googleapis.com/v0/b/tugas-pbo-fc0db.appspot.com/o/Image_not_available.png?alt=media&token=8e87ed45-9177-4945-845c-8cce5ad3d9df'),
              fit: BoxFit.contain),
        ),
      ),
    );
  }
}
