part of '_index.dart';

class Shoes implements Product {
  List<String> colors;

  List<int> sizes;

  String merk;

  @override
  String productId;

  @override
  String name;

  @override
  String description;

  @override
  int price;

  @override
  int quantity;

  @override
  String createdAt;

  @override
  String? updatedAt;

  @override
  Map<String, String>? imageUrl;

  Shoes({
    required this.colors,
    required this.sizes,
    required this.merk,
    required this.productId,
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.createdAt,
    this.updatedAt,
    this.imageUrl,
  });

  Shoes copyWith({
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
  }) {
    return Shoes(
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
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

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

  factory Shoes.fromMap(Map<String, dynamic> map) {
    return Shoes(
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
      imageUrl: Map<String, String>.from(map['images'] ?? const {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory Shoes.fromJson(String source) => Shoes.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Shoes(colors: $colors, sizes: $sizes, merk: $merk, productId: $productId, name: $name, description: $description, price: $price, quantity: $quantity, createdAt: $createdAt, updatedAt: $updatedAt, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Shoes &&
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
    return colors.hashCode ^
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
