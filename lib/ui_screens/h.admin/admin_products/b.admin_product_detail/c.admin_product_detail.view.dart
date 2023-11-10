part of '_index.dart';

class AdminProductDetailView extends StatelessWidget {
  const AdminProductDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AdminProductDetailAppbar(),
      ),
      floatingActionButton: const AdminProductDetailFab(),
      body: Center(
          child: OnBuilder<WomenShoes?>.all(
              listenTo: _dt.rxProduct,
              onWaiting: () => const CircularProgressIndicator(),
              onError: (e, s) => Text('Error: $e'),
              onData: (data) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${data?.productId}'),
                      Text('${data?.name}'),
                      Text('${data?.description}'),
                      Text('${data?.price}'),
                      Text('${data?.quantity}'),
                      Text('${data?.merk}'),
                      Image.network('${data?.imageUrl?[0]}'),
                      ...List.generate(
                        data!.colors.length,
                        (index) => Text(data.colors[index]),
                      ),
                      ...List.generate(
                        data.sizes.length,
                        (index) => Text('${data.sizes[index]}'),
                      ),
                      Text(data.category.name),
                      Text(data.createdAt),
                      Text('${data.updatedAt}'),
                    ],
                  ))),
    );
  }
}
