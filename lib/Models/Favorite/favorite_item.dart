import 'package:auction_bid_app/Models/Auction/auction.dart';

// favorites items will be displayed one the user click on the love icon on the auction item
class FavoriteAuction {
  final AuctionItem auctionItem;
  final DateTime dateAdded;

  FavoriteAuction({
    required this.dateAdded,
    required this.auctionItem,
  });
}
