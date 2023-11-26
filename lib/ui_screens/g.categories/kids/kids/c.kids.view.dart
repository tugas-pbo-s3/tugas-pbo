part of '_index.dart';

class KidsView extends StatelessWidget {
  const KidsView({super.key});

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
            : const KidsList(),
        onError: (error, refreshError) => error,
        onData: (data) => const KidsList(),
      ),
    );
  }
}
