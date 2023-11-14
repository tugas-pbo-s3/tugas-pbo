part of '../_index.dart';

class MenDetailPhoto extends StatelessWidget {
  const MenDetailPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) => OnBuilder<MenShoes?>.all(
        listenTo: _dt.rxProductFuture,
        onWaiting: () => const CircularProgressIndicator(),
        onError: (error, refreshError) => error,
        onData: (data) => Container(
          alignment: Alignment.topCenter,
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.amber,
            // image: DecorationImage(image: NetworkImage(data!.imageUrl!.values.first)),
          ),
        ),
      );
}
