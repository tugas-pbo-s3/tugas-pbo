part of '_index.dart';

class ManView extends StatelessWidget {
  const ManView({super.key});

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
            : const MenList(),
        onError: (error, refreshError) => error,
        onData: (data) => const MenList(),
      ),
    );
  }
}
