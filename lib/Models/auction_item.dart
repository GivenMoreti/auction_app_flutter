class AuctionItem {
  final String title;
  final double price;
  final DateTime dateAdded;
  final String imgUrl;

  AuctionItem({
    required this.imgUrl,
    required this.title,
    required this.price,
    required this.dateAdded,
  });
}
