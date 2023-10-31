part of '_index.dart';

class User {
  final String userId;
  final String username;
  final String password;
  final String email;
  final String image;
  final Role role;
  final int createdAt;
  final int updatedAt;
  User({
    this.userId = '',
    this.username = '',
    this.password = '',
    this.email = '',
    this.image = '',
    required this.role,
    this.createdAt = 0,
    this.updatedAt = 0,
  });

  User copyWith({
    String? userId,
    String? username,
    String? password,
    String? email,
    String? image,
    Role? role,
    int? createdAt,
    int? updatedAt,
  }) {
    return User(
      userId: userId ?? this.userId,
      username: username ?? this.username,
      password: password ?? this.password,
      email: email ?? this.email,
      image: image ?? this.image,
      role: role ?? this.role,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'user_id': userId});
    result.addAll({'username': username});
    result.addAll({'password': password});
    result.addAll({'email': email});
    result.addAll({'image': image});
    result.addAll({'role': role.toMap()});
    result.addAll({'created_at': createdAt});
    result.addAll({'updated_at': updatedAt});

    return result;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userId: map['user_id'] ?? '',
      username: map['username'] ?? '',
      password: map['password'] ?? '',
      email: map['email'] ?? '',
      image: map['image'] ?? '',
      role: Role.fromMap(map['role']),
      createdAt: map['created_at']?.toInt() ?? 0,
      updatedAt: map['updated_at']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(userId: $userId, username: $username, password: $password, email: $email, image: $image, role: $role, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.userId == userId &&
        other.username == username &&
        other.password == password &&
        other.email == email &&
        other.image == image &&
        other.role == role &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return userId.hashCode ^
        username.hashCode ^
        password.hashCode ^
        email.hashCode ^
        image.hashCode ^
        role.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
