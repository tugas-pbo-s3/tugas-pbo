part of '_index.dart';

class MenShoes extends Shoes {
  final Category categories;
  MenShoes({
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
