part of '../_index.dart';

class DetailDesc extends StatelessWidget {
  const DetailDesc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Product Name',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Rp.300.000",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.red.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          const SizedBoxH(8),
          const Text(
            'For Women',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 16,
            ),
          ),
          const SizedBoxH(20),
          const Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black54,
            ),
          ),
          const SizedBoxH(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    nav.to(Routes.cart);
                  },
                  icon: const Icon(Icons.shopping_cart)),
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return DetailBottomsheet();
                    },
                  );
                },
                child: const Text(
                  "Buy Now",
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
