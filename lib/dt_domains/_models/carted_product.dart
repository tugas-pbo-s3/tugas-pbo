part of '_index.dart';

class CartedProduct {
  final Product shoes;
  final int qty;
  final int size;
  final String color;
  final String cartedId;
  CartedProduct({
    required this.shoes,
    this.qty = 0,
    this.size = 0,
    this.color = '',
    this.cartedId = '',
  });

  CartedProduct copyWith({
    Product? shoes,
    int? qty,
    int? size,
    String? color,
    String? cartedId,
  }) {
    return CartedProduct(
      shoes: shoes ?? this.shoes,
      qty: qty ?? this.qty,
      size: size ?? this.size,
      color: color ?? this.color,
      cartedId: cartedId ?? this.cartedId,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'shoes': shoes.toMap()});
    result.addAll({'qty': qty});
    result.addAll({'size': size});
    result.addAll({'color': color});
    result.addAll({'carted_id': cartedId});

    return result;
  }

  factory CartedProduct.fromMap(Map<String, dynamic> map) {
    return CartedProduct(
      shoes: Product.fromMap(map['shoes']),
      qty: map['qty']?.toInt() ?? 0,
      size: map['size']?.toInt() ?? 0,
      color: map['color'] ?? '',
      cartedId: map['carted_id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CartedProduct.fromJson(String source) => CartedProduct.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CartedShoes(shoes: $shoes, qty: $qty, size: $size, color: $color, cartedId: $cartedId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartedProduct &&
        other.shoes == shoes &&
        other.qty == qty &&
        other.size == size &&
        other.color == color &&
        other.cartedId == cartedId;
  }

  @override
  int get hashCode {
    return shoes.hashCode ^ qty.hashCode ^ size.hashCode ^ color.hashCode ^ cartedId.hashCode;
  }
}
