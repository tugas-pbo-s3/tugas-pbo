part of '_index.dart';

final x1FbFirestore = FbFirestore();

class FbFirestore {
  final instance = FirebaseFirestore.instance;

  //* stream many items
  Stream<QuerySnapshot<Map<String, dynamic>>> streamCollection({
    required String colId,
  }) {
    return instance.collection(colId).snapshots();
  }

  //* stream single item
  Stream<DocumentSnapshot<Map<String, dynamic>>> streamDocument({
    required String colId,
    required String docId,
  }) {
    return instance.collection(colId).doc(docId).snapshots();
  }

  // ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----

  //* read multiple items
  Future<dynamic> readCollection({
    required String colId,
    required int limit,
    required String lastCreateTime,
  }) async {
    try {
      return Future.value(
        instance
            .collection(colId)
            .limit(limit)
            .orderBy('created_at', descending: true)
            .startAfter([lastCreateTime]).get(),
      );
    } catch (e) {
      logxx.e(FbFirestore, 'error on read. ${e.toString()}');
    }
  }

  //!  this syntax have a warning
  // Future<QuerySnapshot<Map<String, dynamic>>> readCollection({
  //   required String colId,
  //   required int limit,
  //   required String lastCreateTime,
  // }) async {
  //   return Future.value(instance
  //           .collection(colId)
  //           .limit(limit)
  //           .orderBy('created_at', descending: true)
  //           .startAfter([lastCreateTime]).get())
  //       .catchError((e) {
  //     logxx.e(FbFirestore, 'error on read. ${e.toString()}');
  //   });
  // }

  //* read single item
  Future<dynamic> readDocument({
    required String colId,
    required String docId,
  }) async {
    try {
      return Future.value(instance.collection(colId).doc(docId).get());
    } catch (e) {
      logxx.e(FbFirestore, 'error on read. ${e.toString()}');
    }
  }

  //! this syntax have a warning
  // Future<DocumentSnapshot<Map<String, dynamic>>> readDocument({
  //   required String colId,
  //   required String docId,
  // }) async {
  //   return Future.value(instance.collection(colId).doc(docId).get())
  //       .catchError((e) {
  //     logxx.e(FbFirestore, 'error on read. ${e.toString()}');
  //   });
  // }

  // ----- ----- ----- ----- ----- ----- ----- ----- ----- ----- -----

  //* create single item (update if exist)
  Future<void> createDocument({
    required String colId,
    required String docId,
    required Map<String, dynamic> data,
  }) async {
    try {
      await instance.collection(colId).doc(docId).set(data);
    } catch (e) {
      logxx.e(FbFirestore, 'error on create. ${e.toString()}');
    }
  }

  //* update single item (error if not exist)
  Future<void> updateDocument({
    required String colId,
    required String docId,
    required Map<String, dynamic> data,
  }) async {
    try {
      await instance.collection(colId).doc(docId).update(data);
    } catch (e) {
      logxx.e(FbFirestore, 'error on update. ${e.toString()}');
    }
  }

  //* delete single item
  Future<void> deleteDocument({
    required String colId,
    required String docId,
  }) async {
    try {
      await instance.collection(colId).doc(docId).delete();
    } catch (e) {
      logxx.e(FbFirestore, 'error on delete. ${e.toString()}');
    }
  }

  Future<void> deleteAllDocument({
    required String colId,
  }) async {
    try {
      final collection = await instance.collection(colId).get();

      final batch = instance.batch();

      for (final doc in collection.docs) {
        batch.delete(doc.reference);
      }

      return batch.commit();
    } catch (e) {
      logxx.e(FbFirestore, 'error on delete ${e.toString()} ');
    }
  }
}
