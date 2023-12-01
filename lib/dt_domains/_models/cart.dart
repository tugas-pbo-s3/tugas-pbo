part of '_index.dart';

class Cart {
  List<CartedProduct> listCartedShoes;
  String userId;
  String cartId;
  Cart({
    this.listCartedShoes = const [],
    this.userId = '',
    this.cartId = '',
  });

  Cart copyWith({
    List<CartedProduct>? listCartedShoes,
    String? userId,
    String? cartId,
  }) {
    return Cart(
      listCartedShoes: listCartedShoes ?? this.listCartedShoes,
      userId: userId ?? this.userId,
      cartId: cartId ?? this.cartId,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'list_carted_shoes': listCartedShoes.map((x) => x.toMap()).toList()});
    result.addAll({'user_id': userId});
    result.addAll({'cart_id': cartId});

    return result;
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      listCartedShoes:
          List<CartedProduct>.from(map['list_carted_shoes']?.map((x) => CartedProduct.fromMap(x)) ?? const []),
      userId: map['user_id'] ?? '',
      cartId: map['cart_id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cart.fromJson(String source) => Cart.fromMap(json.decode(source));

  @override
  String toString() => 'Cart(listCartedShoes: $listCartedShoes, userId: $userId, cartId: $cartId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cart &&
        listEquals(other.listCartedShoes, listCartedShoes) &&
        other.userId == userId &&
        other.cartId == cartId;
  }

  @override
  int get hashCode => listCartedShoes.hashCode ^ userId.hashCode ^ cartId.hashCode;
}
