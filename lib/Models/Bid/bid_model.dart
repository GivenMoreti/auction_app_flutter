import 'package:auction_bid_app/Models/Auction/auction.dart';

class Bid {
  final int bidId;
  final Auction item;
  final DateTime dateOfBid;
  final double bidPrice;
  final bool wonBid = false;

  Bid(
      {required this.bidId,
      required this.item,
      required this.bidPrice,
      required this.dateOfBid});
}
