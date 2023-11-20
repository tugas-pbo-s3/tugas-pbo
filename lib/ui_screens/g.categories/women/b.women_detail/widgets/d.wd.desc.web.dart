part of '../_index.dart';

class WomenDetailDesWeb extends StatelessWidget {
  const WomenDetailDesWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder<WomenShoes?>.all(
      listenTo: _dt.rxProductFuture,
      onWaiting: () => const Text(''),
      onError: (error, refreshError) => error,
      onData: (data) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            data!.name,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Rp ${Fun.formatRupiah.format(data.price)}',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.red.withOpacity(0.7),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Merk: ${data.merk}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Text(
            'Category: ${data.category.name}',
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          Text(
            'Description: ${data.description}',
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
