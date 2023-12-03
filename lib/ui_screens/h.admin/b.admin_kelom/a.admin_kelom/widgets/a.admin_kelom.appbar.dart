part of '../_index.dart';

class AdminKelomAppbar extends StatelessWidget {
  const AdminKelomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(_dt.rxTitle.st)),
      leading: MediaQuery.of(context).size.width < 600
          ? IconButton(
              onPressed: () {
                Data.adminHome.st.scaffoldHome.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu),
            )
          : null,
    );
  }
}