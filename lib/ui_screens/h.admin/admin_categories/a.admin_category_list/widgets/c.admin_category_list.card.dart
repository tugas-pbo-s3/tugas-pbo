part of '../_index.dart';

class AdminCategoryListCard extends StatelessWidget {
  final Category category;
  const AdminCategoryListCard({Key? key, required this.category}) : super(key: key);

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
              logx.wtf('selected id: ${_dt.rxSelectedId.st}');
              logx.wtf('id: ${category.categoryId}');
            },
          ),
        ),
      ),
    );
  }
}
