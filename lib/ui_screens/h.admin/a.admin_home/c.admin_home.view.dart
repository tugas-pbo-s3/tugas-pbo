part of '_index.dart';

class AdminHomeView extends ReactiveStatelessWidget {
  const AdminHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _dt.scaffoldHome,
      // floatingActionButton: const AdminHomeFab(),
      drawer: MediaQuery.of(context).size.width < 600
          ? const Drawer(
              child: AdminHomeSidebar(),
            )
          : null,
      drawerEnableOpenDragGesture: MediaQuery.of(context).size.width < 600,
      body: OnReactive(
        () => Center(
          child: Row(
            children: [
              MediaQuery.of(context).size.width >= 600 ? const AdminHomeSidebar() : const SizedBox.shrink(),
              const Expanded(
                child: Center(
                  child: AdminHomeScreen(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
