part of '_index.dart';

class Category {
  final String categoryId;
  final String name;
  final int createdAt;
  final int updatedAt;
  final TypeOfShoes type;
  Category({
    this.categoryId = '',
    this.name = '',
    this.createdAt = 0,
    this.updatedAt = 0,
    required this.type,
  });

  Category copyWith({
    String? categoryId,
    String? name,
    int? createdAt,
    int? updatedAt,
    TypeOfShoes? type,
  }) {
    return Category(
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'category_id': categoryId});
    result.addAll({'name': name});
    result.addAll({'created_at': createdAt});
    result.addAll({'updated_at': updatedAt});
    result.addAll({'type': type.toMap()});

    return result;
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      categoryId: map['category_id'] ?? '',
      name: map['name'] ?? '',
      createdAt: map['created_at']?.toInt() ?? 0,
      updatedAt: map['updated_at']?.toInt() ?? 0,
      type: TypeOfShoes.fromMap(map['type']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) => Category.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Category(categoryId: $categoryId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Category &&
        other.categoryId == categoryId &&
        other.name == name &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.type == type;
  }

  @override
  int get hashCode {
    return categoryId.hashCode ^ name.hashCode ^ createdAt.hashCode ^ updatedAt.hashCode ^ type.hashCode;
  }
}
