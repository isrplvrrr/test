class Product {
  int? id;
  String? name;
  bool isSaved;
  String? image;
  int? price;
  bool isBought;
  int? count;
  Product({
    this.isBought = false,
    this.isSaved = false,
    this.id = 0,
    this.image = '',
    this.name = '',
    this.price = 0,
    this.count = 0,
  });
}
