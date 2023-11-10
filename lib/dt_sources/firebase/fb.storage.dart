part of '_index.dart';

final x1FbStorage = RM.inject<FbStorage>(() => FbStorage());

class FbStorage {
  final instance = FirebaseStorage.instance;

  //* upload multiple files
  Future<Map<String, String>> uploadFiles(Map<String, String> images) async {
    Map<String, String> imagesWithUrls = {};
    await Future.wait(images.entries.map((e) async {
      return imagesWithUrls[e.key] = await uploadFile(e.key, e.value);
    }));
    return imagesWithUrls;
  }

  //* upload single file
  Future<String> uploadFile(
    String ref,
    String path,
  ) async {
    final task = instance.ref(ref).putFile(File(path));
    final snapshot = await task;
    final bytesTransferred = snapshot.bytesTransferred;
    final url = await snapshot.ref.getDownloadURL();
    logxx.i(FbStorage, '$ref [$bytesTransferred bytes] uploaded.');
    return url;
  }

  //* get url
  Future<String> getUrl(String ref) async {
    return await instance.ref(ref).getDownloadURL();
  }

  //* delete folder
  Future<void> deleteFolder(String folder) async {
    ListResult result = await instance.ref(folder).listAll();
    for (var ref in result.items) {
      instance.ref(ref.fullPath).delete().then((_) {
        logxx.i(FbStorage, '${ref.fullPath} deleted.');
      });
    }
  }

  //* delete
  Future<void> delete(String ref) async {
    return await instance.ref(ref).delete();
  }
}
