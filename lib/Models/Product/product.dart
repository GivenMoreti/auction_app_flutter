class Product {
  final int prodId;
  final String title;
  final double price;
  final DateTime dateAdded;
  final String imgUrl;

  Product({
    required this.prodId,
    required this.imgUrl,
    required this.title,
    required this.price,
    required this.dateAdded,
  });
}
