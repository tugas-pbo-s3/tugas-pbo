part of '../_index.dart';

// ignore: must_be_immutable
class DetailBottomsheet extends StatelessWidget {
  DetailBottomsheet({super.key});

  List sizes = [
    '37',
    '38',
    '39',
    '40',
  ];

  List<Color?> colors = [
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBoxH(10),
          Container(
            height: 4,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBoxH(10),
          Row(
            children: [
              const Text(
                'Size: ',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBoxW(30),
              ...List.generate(
                sizes.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(sizes[index]),
                ),
              ),
            ],
          ),
          const SizedBoxH(10),
          Row(
            children: [
              const Text(
                'Color:',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBoxW(30),
              ...List.generate(
                colors.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: colors[index],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          const SizedBoxH(10),
          Row(
            children: [
              const Text(
                'Total: ',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBoxW(30),
              IconButton(
                icon: const Icon(
                  Icons.remove,
                ),
                onPressed: () {},
                color: Colors.redAccent,
              ),
              const SizedBoxH(5),
              const Text(
                '0',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBoxH(5),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  CupertinoIcons.plus,
                  size: 18,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
          const SizedBoxH(4),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Payment:',
                style: TextStyle(
                  color: Color(0xFFFD725A),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Rp.300.000',
                style: TextStyle(
                  color: Color(0xFFFD725A),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          InkWell(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const CartScreen(),
              //     ));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 100,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFD725A),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'Checkout',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
