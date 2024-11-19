import 'package:auction_bid_app/Models/Auction/product.dart';
import 'package:flutter/material.dart';

class Auction extends ChangeNotifier {
  final int auctionId;
  final Product item;
  final double auctionPrice;
  final bool isSold;
  final DateTime startDate;
  final DateTime endDate;

  // Getter for endDate
  DateTime get getEndDate => endDate;

  Auction({
    required this.auctionId,
    required this.item,
    required this.auctionPrice,
    required this.startDate,
    required this.isSold,
    required this.endDate,
  });

  // Calculate time left for this auction
  String calculateTimeLeft() {
    final Duration timeLeft = endDate.difference(DateTime.now());

    // Format the time left
    final String timeLeftString = timeLeft.inDays > 0
        ? '${timeLeft.inDays} days left'
        : timeLeft.inHours > 0
            ? '${timeLeft.inHours} hours left'
            : timeLeft.inMinutes > 0
                ? '${timeLeft.inMinutes} minutes left'
                : 'Auction ended';
    return timeLeftString;
  }
}
