part of '_index.dart';

class CartedShoes {
  final Shoes shoes;
  final int qty;
  final int size;
  final String color;
  final String cartedId;
  CartedShoes({
    required this.shoes,
    this.qty = 0,
    this.size = 0,
    this.color = '',
    this.cartedId = '',
  });

  CartedShoes copyWith({
    Shoes? shoes,
    int? qty,
    int? size,
    String? color,
    String? cartedId,
  }) {
    return CartedShoes(
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

  factory CartedShoes.fromMap(Map<String, dynamic> map) {
    return CartedShoes(
      shoes: Shoes.fromMap(map['shoes']),
      qty: map['qty']?.toInt() ?? 0,
      size: map['size']?.toInt() ?? 0,
      color: map['color'] ?? '',
      cartedId: map['carted_id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CartedShoes.fromJson(String source) => CartedShoes.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CartedShoes(shoes: $shoes, qty: $qty, size: $size, color: $color, cartedId: $cartedId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartedShoes &&
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
