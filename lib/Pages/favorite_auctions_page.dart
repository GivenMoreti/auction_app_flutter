import 'package:auction_bid_app/Components/favorite_auction_container.dart';
import 'package:auction_bid_app/Models/Product/product.dart';
import 'package:auction_bid_app/Models/Favorite/favorite_item.dart';
import 'package:flutter/material.dart';

class FavoriteAuctionsPage extends StatelessWidget {
  // Favorite items list
  final List<FavoriteAuction> favoriteItems = [
    FavoriteAuction(
      dateAdded: DateTime.now(),
      item: Product(
        prodId: 1,
        imgUrl: "https://example.com/image.jpg", // Example image URL
        title: "Vintage Watch",
        price: 100.0,
        dateAdded: DateTime.now(),
      ),
    ),
  ];

  FavoriteAuctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favoriteItems.length,
      itemBuilder: (context, index) {
        final favoriteAuction = favoriteItems[index];
        return FavoriteAuctionContainer(
          item: favoriteAuction.item,
        );
      },
    );
  }
}
