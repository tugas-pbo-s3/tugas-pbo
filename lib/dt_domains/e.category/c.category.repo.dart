part of '_index.dart';

class CategoryRepo {
  Future<List<Category>> readCategories() async {
    try {
      List<Category> categories = [];
      final result = await x1HttpDio.get(ReqX(path: '/categories'));
      for (var category in result.data['data']) {
        categories.add(Category.fromMap(category));
      }
      return categories;
    } catch (e) {
      logx.e('this is from read categories repo');
      rethrow;
    }
  }

  Future<Category> readCategory(String id) async {
    try {
      final categories = Prov.category.st.rxCategoryList.st;
      final index = Prov.category.st.rxCategoryList.st.indexWhere((element) => element.categoryId == id);
      return categories[index];
    } catch (e) {
      logx.e('this is from read category repo');
      rethrow;
    }
  }

  Future<dynamic> createCategory(Category category) async {
    try {
      await x1HttpDio.post(
        ReqX(
          path: '/categories',
          data: category.toMap(),
        ),
      );
    } catch (e) {
      logx.e('this is from create category repo');
      rethrow;
    }
  }

  Future<dynamic> deleteCategory() async {
    try {} catch (e) {
      logx.e('this is from delete category repo');
      rethrow;
    }
  }

  Future<dynamic> updateCategory() async {
    try {} catch (e) {
      logx.e('this is from update category repo');
      rethrow;
    }
  }
}
