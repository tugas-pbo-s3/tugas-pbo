part of '_index.dart';

class CategoryRepoMock implements CategoryRepo {
  @override
  Future createCategory(Category category) {
    throw UnimplementedError();
  }

  @override
  Future deleteCategory() {
    throw UnimplementedError();
  }

  @override
  Future<List<Category>> readCategories() async {
    try {
      List<Category> categories = [];
      final result = await Fun.loadJson('assets/json/categories.json');
      for (var category in result["data"]) {
        categories.add(Category.fromMap(category));
      }
      return categories;
    } catch (e) {
      logx.e('[Category: RepoMock] readCategories');
      rethrow;
    }
  }

  @override
  Future<Category> readCategory(String id) async {
    try {
      await Future.delayed(2.seconds);
      final index = Prov.category.st.rxCategoryList.st.indexWhere((element) => element.categoryId == id);
      return Prov.category.st.rxCategoryList.st[index];
    } catch (e) {
      logx.e('[Category: RepoMock] readCategory');
      rethrow;
    }
  }

  @override
  Future updateCategory() {
    throw UnimplementedError();
  }
}
