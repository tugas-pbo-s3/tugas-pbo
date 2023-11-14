part of '_index.dart';

class CartedShoes {
  final Shoes shoes;
  final int qty;
  final int size;
  final String color;
  CartedShoes({
    required this.shoes,
    this.qty = 0,
    this.size = 0,
    this.color = '',
  });

  CartedShoes copyWith({
    Shoes? shoes,
    int? qty,
    int? size,
    String? color,
  }) {
    return CartedShoes(
      shoes: shoes ?? this.shoes,
      qty: qty ?? this.qty,
      size: size ?? this.size,
      color: color ?? this.color,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'shoes': shoes.toMap()});
    result.addAll({'qty': qty});
    result.addAll({'size': size});
    result.addAll({'color': color});

    return result;
  }

  factory CartedShoes.fromMap(Map<String, dynamic> map) {
    return CartedShoes(
      shoes: Shoes.fromMap(map['shoes']),
      qty: map['qty']?.toInt() ?? 0,
      size: map['size']?.toInt() ?? 0,
      color: map['color'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CartedShoes.fromJson(String source) => CartedShoes.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CartedShoes(shoes: $shoes, qty: $qty, size: $size, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartedShoes &&
        other.shoes == shoes &&
        other.qty == qty &&
        other.size == size &&
        other.color == color;
  }

  @override
  int get hashCode {
    return shoes.hashCode ^ qty.hashCode ^ size.hashCode ^ color.hashCode;
  }
}
