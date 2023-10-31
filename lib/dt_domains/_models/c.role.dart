part of '_index.dart';

class Role {
  final String roleId;
  final String name;
  final int createdAt;
  final int updatedAt;
  Role({
    this.roleId = '',
    this.name = '',
    this.createdAt = 0,
    this.updatedAt = 0,
  });

  Role copyWith({
    String? roleId,
    String? name,
    int? createdAt,
    int? updatedAt,
  }) {
    return Role(
      roleId: roleId ?? this.roleId,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'role_id': roleId});
    result.addAll({'name': name});
    result.addAll({'created_at': createdAt});
    result.addAll({'updated_at': updatedAt});

    return result;
  }

  factory Role.fromMap(Map<String, dynamic> map) {
    return Role(
      roleId: map['role_id'] ?? '',
      name: map['name'] ?? '',
      createdAt: map['created_at']?.toInt() ?? 0,
      updatedAt: map['updated_at']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Role.fromJson(String source) => Role.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Role(roleId: $roleId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Role &&
        other.roleId == roleId &&
        other.name == name &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return roleId.hashCode ^ name.hashCode ^ createdAt.hashCode ^ updatedAt.hashCode;
  }
}
