part of '_index.dart';

class KelomView extends StatelessWidget {
  const KelomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBuilder.all(
        listenToMany: [_dt.rxLoadMore],
        onWaiting: () => _dt.rxProductList.st.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : const KelomList(),
        onError: (error, refreshError) => error,
        onData: (data) => const KelomList(),
      ),
    );
  }
}
