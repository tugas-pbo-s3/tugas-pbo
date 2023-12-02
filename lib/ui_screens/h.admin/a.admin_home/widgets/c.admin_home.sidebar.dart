part of '../_index.dart';

class AdminHomeSidebar extends StatelessWidget {
  const AdminHomeSidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _dt.sideBarCtrl,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
        ),
        // hoverColor: Theme.of(context).colorScheme.primary,
        hoverTextStyle: const TextStyle(color: Colors.purple),
        hoverColor: Colors.purple.shade300,
        textStyle: const TextStyle(color: Colors.purple),
        // textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.white),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.transparent),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.purple,
            // color: Theme.of(context).colorScheme.primary,
          ),
          gradient: LinearGradient(
            // colors: [Colors.purple.shade200, Theme.of(context).colorScheme.primary],
            colors: [Colors.purple.shade200, Colors.purple],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: const IconThemeData(
          color: Colors.purple,
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.2),
        ),
      ),
      footerDivider: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            height: 50,
            child: OutlinedButton(
              onPressed: () {
                _ct.signOut();
              },
              child: const Text(
                'Keluar',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Divider(),
        ],
      ),
      headerBuilder: (context, extended) {
        return Column(
          children: [
            MediaQuery.of(context).size.width < 600
                ? Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        _dt.scaffoldHome.currentState!.closeDrawer();
                      },
                      icon: const Icon(Icons.close),
                    ),
                  )
                : const SizedBox.shrink(),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/images/pegaShoes2000.png'),
              ),
            ),
          ],
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Beranda',
          onTap: () {
            logx.w(_dt.sideBarCtrl.selectedIndex.toString());
            _dt.rxIsLimit.setState((s) => false);
            logx.wtf(_dt.rxIsLimit.st.toString());
          },
        ),
        SidebarXItem(
          icon: Icons.shopping_bag,
          label: 'Kelom',
          onTap: () {
            logx.w(_dt.sideBarCtrl.selectedIndex.toString());
          },
        ),
        SidebarXItem(
          icon: Icons.shopping_bag,
          label: 'Kebaya',
          onTap: () {
            logx.w(_dt.sideBarCtrl.selectedIndex.toString());
          },
        ),
        SidebarXItem(
          icon: Icons.shopping_bag,
          label: 'Rok',
          onTap: () {
            logx.w(_dt.sideBarCtrl.selectedIndex.toString());
          },
        ),
        SidebarXItem(
          icon: Icons.category,
          label: 'Kategori',
          onTap: () {
            logx.w(_dt.sideBarCtrl.selectedIndex.toString());
          },
        ),
      ],
    );
  }
}
