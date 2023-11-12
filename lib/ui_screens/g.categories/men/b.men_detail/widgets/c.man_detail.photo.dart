part of '../_index.dart';

class MenDetailPhoto extends StatelessWidget {
  MenDetailPhoto({
    super.key,
  });

  final images = _dt.rxProductFuture.st!.imageUrl;

  @override
  Widget build(BuildContext context) {
    return OnBuilder<MenShoes?>.all(
      listenTo: _dt.rxProductFuture,
      onWaiting: () => const CircularProgressIndicator(),
      onError: (error, refreshError) => error,
      onData: (data) => Container(
        alignment: Alignment.topCenter,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: NetworkImage(data!.imageUrl!.values.first)),
        ),
        child: Text(data.name),
      ),
    );
  }
}
