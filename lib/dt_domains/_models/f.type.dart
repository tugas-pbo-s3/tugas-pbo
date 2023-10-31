part of '_index.dart';

class Type {
  final String typeId;
  final String name;
  final int createdAt;
  final int updatedAt;
  Type({
    this.typeId = '',
    this.name = '',
    this.createdAt = 0,
    this.updatedAt = 0,
  });

  Type copyWith({
    String? typeId,
    String? name,
    int? createdAt,
    int? updatedAt,
  }) {
    return Type(
      typeId: typeId ?? this.typeId,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'type_id': typeId});
    result.addAll({'name': name});
    result.addAll({'created_at': createdAt});
    result.addAll({'updated_at': updatedAt});

    return result;
  }

  factory Type.fromMap(Map<String, dynamic> map) {
    return Type(
      typeId: map['type_id'] ?? '',
      name: map['name'] ?? '',
      createdAt: map['created_at']?.toInt() ?? 0,
      updatedAt: map['updated_at']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Type.fromJson(String source) => Type.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Type(typeId: $typeId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Type &&
        other.typeId == typeId &&
        other.name == name &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return typeId.hashCode ^ name.hashCode ^ createdAt.hashCode ^ updatedAt.hashCode;
  }
}
