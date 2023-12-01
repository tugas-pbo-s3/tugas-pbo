part of '_index.dart';

abstract class ProductAbstract {
  String get productId;
  String get name;
  int get price;
  int get quantity;
  String get description;
  Map<String, String>? get imageUrl;
  String get createdAt;
  String? get updatedAt;
}
