import 'package:auction_bid_app/Components/auction_container.dart';
import 'package:auction_bid_app/Models/Auction/auction.dart';
import 'package:auction_bid_app/Models/Auction/product.dart';
import 'package:flutter/material.dart';

class AuctionsPage extends StatefulWidget {
  const AuctionsPage({super.key});

  @override
  State<AuctionsPage> createState() => _AuctionsPageState();
}

class _AuctionsPageState extends State<AuctionsPage> {
  // List of auctions

  final List<Auction> auctionsList = [
    Auction(
      item: Product(
        prodId: 1,
        price: 23000,
        title: "Laptop",
        dateAdded: DateTime.now(),
        imgUrl: "https://via.placeholder.com/150",
      ),
      auctionId: 1,
      auctionPrice: 32000,
      startDate: DateTime.now(),
      isSold: false,
      endDate: DateTime.now().add(const Duration(days: 7)),
    ),
    Auction(
      item: Product(
        prodId: 2,
        price: 2000,
        title: "Iphone",
        dateAdded: DateTime.now(),
        imgUrl: "https://via.placeholder.com/150",
      ),
      auctionId: 2,
      auctionPrice: 12000,
      startDate: DateTime.now(),
      isSold: false,
      endDate: DateTime.now().add(const Duration(days: 6)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auctions"),
      ),
      body: ListView.builder(
        itemCount: auctionsList.length,
        itemBuilder: (context, index) {
          final auction = auctionsList[index];
          final item = auction.item;

          return AuctionContainer(
            title: item.title,
            price: auction.auctionPrice,
            dateAdded: item.dateAdded,
            isSold: auction.isSold,
            imgUrl: item.imgUrl,
            endDate: auction.endDate,
            startDate: auction.startDate,
          );
        },
      ),
    );
  }
}
