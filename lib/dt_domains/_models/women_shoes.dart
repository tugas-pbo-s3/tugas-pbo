part of '_index.dart';

class WomenShoes extends Shoes {
  final Category categories;
  WomenShoes({
    required this.categories,
    required super.productId,
    required super.name,
    required super.description,
    required super.price,
    required super.quantity,
    required super.createdAt,
    super.updatedAt,
    required super.color,
    required super.size,
    required super.merk,
    super.imageUrl,
  });
}
