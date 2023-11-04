part of '_index.dart';

abstract class Product {
  String get productId;
  String get name;
  int get price;
  int get quantity;
  String get description;
  List<String>? get imageUrl;
  String get createdAt;
  String? get updatedAt;
}
