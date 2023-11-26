part of '_index.dart';

class WomenView extends StatelessWidget {
  const WomenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(child: CircularProgressIndicator()),
      body: OnBuilder.all(
        listenToMany: [_dt.rxLoadMore],
        onWaiting: () => _dt.rxProductList.st.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : const WomenList(),
        onError: (error, refreshError) => error,
        onData: (data) => const WomenList(),
      ),
    );
  }
}
