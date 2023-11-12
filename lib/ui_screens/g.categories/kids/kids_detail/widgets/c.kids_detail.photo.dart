part of '../_index.dart';

class KidsDetailPhoto extends StatelessWidget {
  KidsDetailPhoto({
    super.key,
  });

  final images = _dt.rxProductFuture.st!.imageUrl;

  @override
  Widget build(BuildContext context) {
    return OnBuilder<KidsShoes?>.all(
        listenTo: _dt.rxProductFuture,
        onWaiting: () => const CircularProgressIndicator(),
        onError: (error, refreshError) => error,
        onData: (data) => Column(
              children: [
                for (var i in data!.imageUrl!.values)
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.network(
                      i,
                      fit: BoxFit.cover,
                    ),
                  ),
              ],
            )

        // onData: (data) => Container(
        //   alignment: Alignment.topCenter,
        //   height: 200,
        //   decoration: const BoxDecoration(
        //       color: Colors.white, image: DecorationImage(image: AssetImage('assets/images/g-logo.png'))),
        //   child: Text(data!.name),

        // ),
        );
  }
}
