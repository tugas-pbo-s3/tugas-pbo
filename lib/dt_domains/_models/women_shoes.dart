part of '_index.dart';

class WomenShoes extends Shoes {
  final Category category;
  WomenShoes({
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

  factory WomenShoes.fromMap(Map<String, dynamic> map) {
    return WomenShoes(
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
      imageUrl: List<String>.from(map['image_url']),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory WomenShoes.fromJson(String source) => WomenShoes.fromMap(json.decode(source));

  @override
  WomenShoes copyWith({
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
    List<String>? imageUrl,
    Category? category,
  }) {
    return WomenShoes(
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
      category: category ?? this.category,
    );
  }

  @override
  String toString() =>
      'WomenShoes(category: $category, colors: $colors, sizes: $sizes, merk: $merk, productId: $productId, name: $name, description: $description, price: $price, quantity: $quantity, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WomenShoes &&
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
        listEquals(other.imageUrl, imageUrl);
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
