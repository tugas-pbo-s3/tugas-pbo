part of '../_index.dart';

class KebayaLoad extends StatelessWidget {
  const KebayaLoad({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 35, 20, 30),
      child: OnBuilder.all(
        listenToMany: [_dt.rxLoadMore],
        onWaiting: () => const Center(
          child: SizedBox(
            height: 30,
            width: 30,
            child: CircularProgressIndicator(strokeWidth: 3),
          ),
        ),
        onError: (error, refreshError) => error,
        onData: (data) => _dt.rxIsEnd.st == true
            ? const Center(child: Text('~~ end of list ~~'))
            : OutlinedButton(
                child: const Text('more items'),
                onPressed: () => _ct.readAllProducts(),
              ),
      ),
    );
  }
}
