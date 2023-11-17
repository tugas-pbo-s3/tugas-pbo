part of '../_index.dart';

class WomenDetailPhoto extends StatelessWidget {
  const WomenDetailPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder<WomenShoes?>.all(
      listenTo: _dt.rxProductFuture,
      onWaiting: () => const Text(''),
      onError: (error, refreshError) => error,
      onData: (data) => Container(
        alignment: Alignment.topCenter,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.amber,
          image: DecorationImage(
              image: NetworkImage(data?.imageUrl?.values.firstOrNull ??
                  'https://firebasestorage.googleapis.com/v0/b/tugas-pbo-fc0db.appspot.com/o/Image_not_available.png?alt=media&token=8e87ed45-9177-4945-845c-8cce5ad3d9df'),
              fit: BoxFit.fitHeight),
        ),
      ),
      // onData: (data) => Container(
      //   alignment: Alignment.topCenter,
      //   height: 200,
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     image: DecorationImage(image: NetworkImage(data?.imageUrl?.values.first ?? ''), fit: BoxFit.fitHeight),
      //   ),
      // ),
    );
  }
}
