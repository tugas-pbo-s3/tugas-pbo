part of '../_index.dart';

class AdminHomeAppbar extends ReactiveStatelessWidget {
  const AdminHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => AppBar(
        title: OnReactive(() => const Text('Admin Home')),
        leading: MediaQuery.of(context).size.width < 600
            ? IconButton(
                onPressed: () {
                  _dt.scaffoldHome.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
