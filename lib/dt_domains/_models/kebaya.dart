part of '_index.dart';

class Kebaya extends Product {
  final Category category;
  Kebaya({
    required this.category,
    required super.productId,
    required super.name,
    required super.description,
    required super.price,
    required super.quantity,
    required super.createdAt,
    super.updatedAt,
    required super.colors,
    required super.sizes,
    required super.merk,
    super.imageUrl,
  });

  @override
  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'category': category.toMap()});
    result.addAll({'colors': colors});
    result.addAll({'sizes': sizes});
    result.addAll({'merk': merk});
    result.addAll({'product_id': productId});
    result.addAll({'name': name});
    result.addAll({'description': description});
    result.addAll({'price': price});
    result.addAll({'quantity': quantity});
    result.addAll({'created_at': createdAt});
    if (updatedAt != null) {
      result.addAll({'updated_at': updatedAt});
    }
    if (imageUrl != null) {
      result.addAll({'image_url': imageUrl});
    }

    return result;
  }

  factory Kebaya.fromMap(Map<String, dynamic> map) {
    return Kebaya(
      category: Category.fromMap(map['category']),
      colors: List<String>.from(map['colors'] ?? const []),
      sizes: List<int>.from(map['sizes'] ?? const []),
      merk: map['merk'] ?? '',
      productId: map['product_id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      price: map['price']?.toInt() ?? 0,
      quantity: map['quantity']?.toInt() ?? 0,
      createdAt: map['created_at'] ?? '',
      updatedAt: map['updated_at'],
      imageUrl: Map<String, String>.from(map['image_url'] ?? const {}),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory Kebaya.fromJson(String source) => Kebaya.fromMap(json.decode(source));

  @override
  Kebaya copyWith({
    List<String>? colors,
    List<int>? sizes,
    String? merk,
    String? productId,
    String? name,
    String? description,
    int? price,
    int? quantity,
    String? createdAt,
    String? updatedAt,
    Map<String, String>? imageUrl,
    Category? categories,
  }) {
    return Kebaya(
      colors: colors ?? this.colors,
      sizes: sizes ?? this.sizes,
      merk: merk ?? this.merk,
      productId: productId ?? this.productId,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      imageUrl: imageUrl ?? this.imageUrl,
      category: category,
    );
  }

  @override
  String toString() =>
      'MenShoes(category: $category, colors: $colors, sizes: $sizes, merk: $merk, productId: $productId, name: $name, description: $description, price: $price, quantity: $quantity, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Kebaya &&
        other.category == category &&
        listEquals(other.colors, colors) &&
        listEquals(other.sizes, sizes) &&
        other.merk == merk &&
        other.productId == productId &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        other.quantity == quantity &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        mapEquals(other.imageUrl, imageUrl);
  }

  @override
  int get hashCode {
    return category.hashCode ^
        colors.hashCode ^
        sizes.hashCode ^
        merk.hashCode ^
        productId.hashCode ^
        name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        quantity.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        imageUrl.hashCode;
  }
}
