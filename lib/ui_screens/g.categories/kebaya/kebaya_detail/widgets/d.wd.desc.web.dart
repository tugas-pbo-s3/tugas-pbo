part of '../_index.dart';

class KebayaDetailDescWeb extends StatelessWidget {
  const KebayaDetailDescWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder<Kebaya?>.all(
      listenTo: _dt.rxProductFuture,
      onWaiting: () => const Text(''),
      onError: (error, refreshError) => error,
      onData: (data) => Container(
        constraints: const BoxConstraints(maxWidth: 600),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data!.name,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.grey.shade800),
            ),
            Text(
              'Rp ${Fun.formatRupiah.format(data.price)}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Merk: ${data.merk}',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBoxH(5),
            Text(
              'Category: ${data.category.name}',
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBoxH(5),
            RichText(
              overflow: TextOverflow.clip,
              text: TextSpan(
                text: 'Description: ${data.description}',
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
