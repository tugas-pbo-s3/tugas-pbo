part of '_index.dart';

class UserRepo {
  Future<List<User>> readUsers() async {
    List<User> users = [];
    final result = await x1HttpDio.get(ReqX(path: '/users'));
    for (var user in result.data['data']) {
      users.add(User.fromMap(user));
    }
    return users;
  }

  Future<User> readUser(String id) async {
    final result = await x1HttpDio.get(
      ReqX(path: '/users/profile/$id'),
    );
    final user = User.fromMap(result.data['data']);
    return user;
  }

  Future<dynamic> deleteUser() async {}

  Future<dynamic> createUser(User user, XFile? file) async {
    await x1HttpDio.post(
      ReqX(
        path: '/users/register',
        data: user.toMap(),
      ),
    );
  }

  Future<dynamic> updateUser(User user, String userId, XFile? file) async {
    await x1HttpDio.put(
      ReqX(path: '/users/$userId', data: user.toMap()),
    );
  }

  // * ignore ----
  Future<String> uploadImage(XFile? file) async {
    try {
      String imageUrl = '';
      if (file != null) {
        String fileName = file.path.split('/').last;
        FormData formData = FormData.fromMap({
          "userImage": await MultipartFile.fromFile(
            file.path,
            filename: fileName,
          ),
        });
        final result = await x1HttpDio.upload(
          ReqX(path: '/users/image', data: formData),
        );

        imageUrl = result.data['data']['image_url'];
      }
      return imageUrl;
    } catch (e) {
      rethrow;
    }
  }
}
