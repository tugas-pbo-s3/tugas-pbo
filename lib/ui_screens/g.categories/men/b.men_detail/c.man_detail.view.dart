part of '_index.dart';

class ManDetailView extends StatelessWidget {
  const ManDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    // final height = MediaQuery.of(context).size.height;

    // final sizes = _dt.rxProductFuture.st!.sizes;

    // final colors = _dt.rxProductFuture.st!.colors;

    // List<Color?> colorsState = [
    //   Colors.white,
    //   Colors.black,
    //   Colors.grey.shade700,
    // ];

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ManDetailAppbar(),
      ),
      floatingActionButton: const ManDetailFab(),
      body: OnBuilder(
          listenTo: _dt.rxProductFuture,
          builder: () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // MenDetailPhoto(),
                  const SizedBoxH(10),
                  const MenDetailDesc(),
                ],
              )

          //     Row(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       alignment: Alignment.topCenter,
          //       width: width / 3.0,
          //       height: height / 1.6,
          //       decoration: const BoxDecoration(
          //         image: DecorationImage(
          //           image: AssetImage("assets/images/pegaShoes.png"),
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          //     Padding(
          //       padding: const EdgeInsets.only(top: 20, left: 25, right: 15),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         children: [
          //           const Text(
          //             "Heals",
          //             style: TextStyle(
          //               fontSize: 28,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //           Text(
          //             "Rp.300.000",
          //             style: TextStyle(
          //               fontSize: 25,
          //               fontWeight: FontWeight.w700,
          //               color: Colors.red.withOpacity(0.7),
          //             ),
          //           ),

          //           const SizedBox(height: 8),
          //           const Text(
          //             'For Women',
          //             style: TextStyle(
          //               color: Colors.black54,
          //               fontSize: 16,
          //             ),
          //           ),
          //           const SizedBox(height: 15),
          //           // Rating Bar
          //           const SizedBox(height: 20),
          //           const SizedBox(
          //             width: 500,
          //             height: 80,
          //             child: Text(
          //               'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
          //               style: TextStyle(
          //                 fontSize: 15,
          //                 color: Colors.black54,
          //               ),
          //             ),
          //           ),
          //           // CustomBottomSheet(),
          //           const SizedBox(height: 5),
          //           Row(
          //             children: [
          //               const Text(
          //                 'Size: ',
          //                 style: TextStyle(
          //                   fontSize: 17,
          //                   fontWeight: FontWeight.w500,
          //                 ),
          //               ),
          //               const SizedBox(width: 30),
          //               ...List.generate(
          //                 sizes.length,
          //                 (index) => Container(
          //                   margin: const EdgeInsets.all(2),
          //                   child: TextButton(
          //                     style: const ButtonStyle(
          //                       backgroundColor: MaterialStatePropertyAll(Colors.pink),
          //                     ),
          //                     onPressed: () {},
          //                     child: Text(sizes[index].toString()),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //           const SizedBox(height: 10),
          //           Row(
          //             children: [
          //               const Text(
          //                 'Color:',
          //                 style: TextStyle(
          //                   fontSize: 17,
          //                   fontWeight: FontWeight.w500,
          //                 ),
          //               ),
          //               const SizedBox(width: 30),
          //               ...List.generate(
          //                 colors.length,
          //                 (index) => Container(
          //                     margin: const EdgeInsets.all(2),
          //                     child: TextButton(
          //                       style: ButtonStyle(
          //                         backgroundColor: MaterialStatePropertyAll(colorsState[index]),
          //                       ),
          //                       onPressed: () {},
          //                       child: Text(colors[index].toString()),
          //                     )),
          //               ),
          //             ],
          //           ),
          //           const SizedBox(height: 60),
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.spaceAround,
          //             children: [
          //               InkWell(
          //                 onTap: () {
          //                   _ct.addToCart();
          //                 },
          //                 child: Container(
          //                   padding: const EdgeInsets.symmetric(
          //                     vertical: 18,
          //                     horizontal: 70,
          //                   ),
          //                   decoration: BoxDecoration(
          //                     color: const Color(0xFFFD725A),
          //                     borderRadius: BorderRadius.circular(30),
          //                   ),
          //                   child: Text(
          //                     'Add to Cart',
          //                     style: TextStyle(
          //                       fontSize: 17,
          //                       fontWeight: FontWeight.w600,
          //                       letterSpacing: 1,
          //                       color: Colors.white.withOpacity(0.8),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           )
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          ),
    );
  }
}
