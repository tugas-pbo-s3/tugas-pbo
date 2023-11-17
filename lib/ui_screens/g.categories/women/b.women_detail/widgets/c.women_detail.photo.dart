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
          color: Colors.white,
          image: DecorationImage(image: NetworkImage(data?.imageUrl?.values.first ?? ''), fit: BoxFit.fitHeight),
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
