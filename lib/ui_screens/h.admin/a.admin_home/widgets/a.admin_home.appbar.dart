part of '../_index.dart';

class AdminHomeAppbar extends ReactiveStatelessWidget {
  const AdminHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => AppBar(
        title: OnReactive(() => const Text('Admin Home')),
      ),
    );
  }
}
