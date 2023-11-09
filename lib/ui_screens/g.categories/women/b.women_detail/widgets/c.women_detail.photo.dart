part of '../_index.dart';

class WomenDetailPhoto extends StatelessWidget {
  WomenDetailPhoto({
    super.key,
    required this.height,
  });

  final double height;

  final images = _dt.rxProductFuture.st!.imageUrl;

  @override
  Widget build(BuildContext context) {
    return OnBuilder.all(
      listenTo: _dt.rxProductFuture,
      onWaiting: () => const CircularProgressIndicator(),
      onError: (error, refreshError) => error,
      onData: (data) => Container(
        alignment: Alignment.topCenter,
        height: height / 2,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: NetworkImage('${data?.imageUrl?[0]}'),
            // image: NetworkImage(data.i),
            // image: AssetImage('assets/images/pegaShoes1000.png'),
            fit: BoxFit.cover,
          ),
        ),
        // child: Padding(
        //   padding: const EdgeInsets.all(20),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Container(
        //         decoration: BoxDecoration(
        //           color: Colors.black,
        //           borderRadius: BorderRadius.circular(30),
        //         ),
        //         child: IconButton(
        //           icon: const Icon(
        //             Icons.arrow_back_ios_new,
        //             size: 22,
        //           ),
        //           onPressed: () {
        //             nav.back();
        //           },
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
