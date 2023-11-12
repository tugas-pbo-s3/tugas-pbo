part of '_index.dart';

class Cart {
  List<Shoes> listShoes;
  List<int> listTotalItems;
  Cart({
    this.listShoes = const [],
    this.listTotalItems = const [],
  });

  Cart copyWith({
    List<Shoes>? listShoes,
    List<int>? listTotalItems,
  }) {
    return Cart(
      listShoes: listShoes ?? this.listShoes,
      listTotalItems: listTotalItems ?? this.listTotalItems,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'list_shoes': listShoes.map((x) => x.toMap()).toList()});
    result.addAll({'list_total_items': listTotalItems});

    return result;
  }

  factory Cart.fromMap(Map<String, dynamic> map) {
    return Cart(
      listShoes: List<Shoes>.from(map['list_shoes']?.map((x) => Shoes.fromMap(x)) ?? const []),
      listTotalItems: List<int>.from(map['list_total_items'] ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory Cart.fromJson(String source) => Cart.fromMap(json.decode(source));

  @override
  String toString() => 'Cart(listShoes: $listShoes, listTotalItems: $listTotalItems)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cart && listEquals(other.listShoes, listShoes) && listEquals(other.listTotalItems, listTotalItems);
  }

  @override
  int get hashCode => listShoes.hashCode ^ listTotalItems.hashCode;
}
