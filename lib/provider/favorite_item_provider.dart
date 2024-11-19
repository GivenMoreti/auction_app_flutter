import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:auction_bid_app/Models/Auction/auction.dart';

class FavoriteItemsProvider extends ChangeNotifier {
  final List<AuctionItem> _favoriteItems = [];

  List<AuctionItem> get favoriteItems => List.unmodifiable(_favoriteItems);

  bool isFavorite(AuctionItem item) {
    return _favoriteItems.any((fav) => fav.auctionId == item.auctionId);
  }

  void addToFavorites(AuctionItem item) {
    if (!isFavorite(item)) {
      _favoriteItems.add(item);
      notifyListeners();
    }
  }

  void removeFromFavorites(AuctionItem item) {
    _favoriteItems.removeWhere((fav) => fav.auctionId == item.auctionId);
    notifyListeners();
  }
}
