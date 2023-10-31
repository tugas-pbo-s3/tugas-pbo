part of '_index.dart';

class Product {
  final String productId;
  final String name;
  final int price;
  final String description;
  final String imageUrl;
  final int createdAt;
  final int updatedAt;
  final Category category;
  Product({
    this.productId = '',
    this.name = '',
    this.price = 0,
    this.description = '',
    this.imageUrl = '',
    this.createdAt = 0,
    this.updatedAt = 0,
    required this.category,
  });

  Product copyWith({
    String? productId,
    String? name,
    int? price,
    String? description,
    String? imageUrl,
    int? createdAt,
    int? updatedAt,
    Category? category,
  }) {
    return Product(
      productId: productId ?? this.productId,
      name: name ?? this.name,
      price: price ?? this.price,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'product_id': productId});
    result.addAll({'name': name});
    result.addAll({'price': price});
    result.addAll({'description': description});
    result.addAll({'image_url': imageUrl});
    result.addAll({'created_at': createdAt});
    result.addAll({'updated_at': updatedAt});
    result.addAll({'category': category.toMap()});

    return result;
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      productId: map['product_id'] ?? '',
      name: map['name'] ?? '',
      price: map['price']?.toInt() ?? 0,
      description: map['description'] ?? '',
      imageUrl: map['image_url'] ?? '',
      createdAt: map['created_at']?.toInt() ?? 0,
      updatedAt: map['updated_at']?.toInt() ?? 0,
      category: Category.fromMap(map['category']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(productId: $productId, name: $name, price: $price, description: $description, imageUrl: $imageUrl, createdAt: $createdAt, updatedAt: $updatedAt, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.productId == productId &&
        other.name == name &&
        other.price == price &&
        other.description == description &&
        other.imageUrl == imageUrl &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.category == category;
  }

  @override
  int get hashCode {
    return productId.hashCode ^
        name.hashCode ^
        price.hashCode ^
        description.hashCode ^
        imageUrl.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        category.hashCode;
  }
}
