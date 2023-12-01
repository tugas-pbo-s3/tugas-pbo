part of '_index.dart';

class RokView extends StatelessWidget {
  const RokView({super.key});

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
            : const RokList(),
        onError: (error, refreshError) => error,
        onData: (data) => const RokList(),
      ),
    );
  }
}
