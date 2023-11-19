part of '../_index.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnReactive(() => AnimatedBuilder(
          animation: _dt.sideBarCtrl,
          builder: (context, child) {
            final pageTitle = _ct.getTitleByIndex(_dt.sideBarCtrl.selectedIndex);
            switch (_dt.sideBarCtrl.selectedIndex) {
              case 0:
                return Column(
                  children: [
                    MediaQuery.of(context).size.width < 600
                        ? Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              onPressed: () {
                                _dt.scaffoldHome.currentState!.openDrawer();
                              },
                              icon: const Icon(Icons.menu),
                            ),
                          )
                        : const SizedBox.shrink()
                  ],
                );
              case 1:
                return const AdminWomenShoesListView();

              case 2:
                return const AdminMenShoesListView();

              case 3:
                return const AdminKidsShoesListView();

              case 4:
                return const AdminCategoryListView();

              default:
                return Text(
                  pageTitle,
                  style: Theme.of(context).textTheme.headlineSmall,
                );
            }
          },
        ));
  }
}
