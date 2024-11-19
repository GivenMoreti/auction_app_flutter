import 'dart:async';
import 'package:auction_bid_app/Models/Product/product.dart';
import 'package:flutter/material.dart';

class AuctionItem extends ChangeNotifier {
  final int auctionId;
  final Product item;
  double auctionPrice;
  bool isSold;
  final DateTime startDate;
  final DateTime endDate;
  Timer? _timer;

  AuctionItem({
    required this.auctionId,
    required this.item,
    required this.auctionPrice,
    required this.startDate,
    required this.isSold,
    required this.endDate,
  }) : assert(
            startDate.isBefore(endDate), 'Start date must be before end date');

  // Getter for endDate
  DateTime get getEndDate => endDate;

  // Calculate time left
  String calculateTimeLeft() {
    final Duration timeLeft = endDate.difference(DateTime.now());

    final String timeLeftString = timeLeft.inDays > 0
        ? '${timeLeft.inDays} days left'
        : timeLeft.inHours > 0
            ? '${timeLeft.inHours} hours left'
            : timeLeft.inMinutes > 0
                ? '${timeLeft.inMinutes} minutes left'
                : 'Auction ended';
    return timeLeftString;
  }

  // Update auction price
  void updateAuctionPrice(double newPrice) {
    auctionPrice = newPrice;
    notifyListeners();
  }

  // Mark item as sold
  void markAsSold() {
    isSold = true;
    notifyListeners();
  }

  // Start countdown (optional)
  void startCountdown() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(minutes: 1), (_) {
      notifyListeners();
    });
  }

  // Stop countdown
  void stopCountdown() {
    _timer?.cancel();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  // Serialization
  // factory AuctionItem.fromJson(Map<String, dynamic> json) {
  //   return AuctionItem(
  //     auctionId: json['auctionId'],
  //     item: Product.fromJson(json['item']),
  //     auctionPrice: json['auctionPrice'],
  //     startDate: DateTime.parse(json['startDate']),
  //     isSold: json['isSold'],
  //     endDate: DateTime.parse(json['endDate']),
  //   );
  // }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'auctionId': auctionId,
  //     'item': item.toJson(),
  //     'auctionPrice': auctionPrice,
  //     'isSold': isSold,
  //     'startDate': startDate.toIso8601String(),
  //     'endDate': endDate.toIso8601String(),
  //   };
  // }

  @override
  String toString() {
    return 'AuctionItem(auctionId: $auctionId, auctionPrice: $auctionPrice, isSold: $isSold, startDate: $startDate, endDate: $endDate)';
  }
}
