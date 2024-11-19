import 'package:auction_bid_app/Components/favorite_auction_container.dart';
import 'package:auction_bid_app/Models/Auction/auction.dart';
import 'package:auction_bid_app/Models/Product/product.dart';
import 'package:auction_bid_app/Models/Favorite/favorite_item.dart';
import 'package:flutter/material.dart';

class FavoriteAuctionsPage extends StatelessWidget {
  // Favorite items list
  final List<FavoriteAuction> favoriteItems = [
    FavoriteAuction(
        dateAdded: DateTime.now(),
        auctionItem: AuctionItem(
            auctionId: 1,
            item: Product(
                prodId: 1,
                imgUrl: "",
                title: "foo",
                price: 13000,
                dateAdded: DateTime.now()),
            auctionPrice: 14000,
            startDate: DateTime.now(),
            isSold: false,
            endDate: DateTime.now())),
  ];

  FavoriteAuctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: favoriteItems.length,
      itemBuilder: (context, index) {
        final favoriteAuction = favoriteItems[index];
        return FavoriteAuctionContainer(
          item: favoriteAuction.auctionItem.item,
        );
      },
    );
  }
}
