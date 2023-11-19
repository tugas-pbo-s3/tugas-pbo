part of '../_index.dart';

class AdminCategoryListCard extends StatelessWidget {
  final Category category;
  const AdminCategoryListCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return OnBuilder.data(
      listenToMany: [_dt.rxLoadMore, _dt.rxCategoryList],
      builder: (data) => Card(
        child: OnReactive(
          () => ListTile(
            selected: category.categoryId == _dt.rxSelectedId.st,
            title: Text(category.name),
            subtitle: Text(category.categoryId),
            onTap: () {
              _ct.select(category.categoryId);
            },
          ),
        ),
      ),
    );
  }
}
