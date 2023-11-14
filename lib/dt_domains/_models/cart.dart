part of '_index.dart';

class Cart {
  List<CartedShoes> listCartedShoes;
  Cart({
    this.listCartedShoes = const [],
  });

  Cart copyWith({
    List<CartedShoes>? listCartedShoes,
  }) {
    return Cart(
      listCartedShoes: listCartedShoes ?? this.listCartedShoes,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'list_carted_shoes': listCartedShoes.map((x) => x.toMap()).toList()});

    return result;
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      listCartedShoes: List<CartedShoes>.from(map['list_carted_shoes']?.map((x) => CartedShoes.fromMap(x)) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory Cart.fromJson(String source) => Cart.fromMap(json.decode(source));

  @override
  String toString() => 'Cart(listCartedShoes: $listCartedShoes)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cart && listEquals(other.listCartedShoes, listCartedShoes);
  }

  @override
  int get hashCode => listCartedShoes.hashCode;
}
