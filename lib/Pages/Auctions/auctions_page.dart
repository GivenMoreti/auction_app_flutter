import 'package:auction_bid_app/Components/auction_container.dart';
import 'package:auction_bid_app/Models/Auction/auction.dart';
import 'package:auction_bid_app/Models/Product/product.dart';
import 'package:flutter/material.dart';

class AuctionsPage extends StatefulWidget {
  const AuctionsPage({super.key});

  @override
  State<AuctionsPage> createState() => _AuctionsPageState();
}

class _AuctionsPageState extends State<AuctionsPage> {
  // List of auctions
  final List<AuctionItem> auctionsList = [
    AuctionItem(
      auctionId: 1,
      item: Product(
        prodId: 1,
        price: 23000,
        title: "Laptop",
        dateAdded: DateTime.now(),
        imgUrl: "https://via.placeholder.com/150",
      ),
      auctionPrice: 32000,
      startDate: DateTime.now(),
      isSold: false,
      endDate: DateTime.now().add(const Duration(days: 7)),
    ),
    AuctionItem(
      auctionId: 2,
      item: Product(
        prodId: 2,
        price: 2000,
        title: "iPhone",
        dateAdded: DateTime.now(),
        imgUrl: "https://via.placeholder.com/150",
      ),
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
        padding: const EdgeInsets.all(8.0),
        itemCount: auctionsList.length,
        itemBuilder: (context, index) {
          final auction = auctionsList[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: AuctionContainer(item: auction),
          );
        },
      ),
    );
  }
}
