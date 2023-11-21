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
                return const AdminHomeInfos();

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
