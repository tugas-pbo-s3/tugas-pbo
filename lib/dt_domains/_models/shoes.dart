part of '_index.dart';

class Shoes implements Product {
  String color;

  int size;

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
  String? imageUrl;

  Shoes({
    required this.productId,
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.createdAt,
    this.updatedAt,
    required this.color,
    required this.size,
    required this.merk,
    this.imageUrl,
  });
}
