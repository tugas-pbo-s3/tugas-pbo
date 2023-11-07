part of '_index.dart';

class CategoryRepo {
  Future<List<Category>> readCategories(String lastCreateTime) async {
    final result = await x1FbFirestore.readCollection(
      colId: Prov.category.st.colId,
      limit: null,
      lastCreateTime: lastCreateTime,
    );

    List<Category> categories = [];
    for (var i in result.docs) {
      categories.add(Category.fromMap(i.data()));
    }
    return categories;
  }

  Future<Category> readCategory() async {
    final result = await x1FbFirestore.readDocument(
      colId: Prov.category.st.colId,
      docId: Prov.category.st.rxSelectedId.st,
    );
    return Category.fromMap(result.data() ?? {});
  }

  // ---- ---- delete ---- ----

  Future<void> deleteAllCategories() async {
    await x1FbFirestore.deleteAllDocument(colId: Prov.category.st.colId);
  }

  Future<void> deleteCategory(String id) async {
    await x1FbFirestore.deleteDocument(
      colId: Prov.category.st.colId,
      docId: Prov.category.st.rxSelectedId.st,
    );
  }

  // ---- ---- create ---- ----

  Future<void> createCategory(Category category) async {
    await x1FbFirestore.createDocument(
      colId: Prov.category.st.colId,
      docId: category.categoryId,
      data: category.toMap(),
    );
  }

  // ---- ---- update ---- ----

  Future<void> updateCategory(Category category) async {
    await x1FbFirestore.updateDocument(
      colId: Prov.category.st.colId,
      docId: Prov.category.st.rxSelectedId.st,
      data: category.toMap(),
    );
  }
}
