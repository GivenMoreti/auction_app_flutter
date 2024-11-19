import 'package:auction_bid_app/Models/Product/product.dart';
import 'package:flutter/material.dart';

class FavoriteAuctionProvider extends ChangeNotifier {
  List<Product> favoriteAuctions = [];

  int countFavorites() {
    int count = 0;
    for (int i = 0; i < favoriteAuctions.length; i++) {
      count++;
    }
    return count;
  }

  void addTofavorite(Product item) {
    favoriteAuctions.add(item);
    notifyListeners();
  }

  void clearfavorites() {
    favoriteAuctions.clear();
    notifyListeners();
  }

//consider usind ids for efficient removal
  void removeFromFavorites(Product item) {
    if (item != null) {
      favoriteAuctions.remove(item);
      notifyListeners();
    }
    print("item ${item.title} does not exist");
  }
}
