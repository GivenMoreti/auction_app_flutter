import 'package:auction_bid_app/Models/Auction/auction.dart';
import 'package:auction_bid_app/Models/Product/product.dart';
import 'package:auction_bid_app/Models/Bid/bid_model.dart';
import 'package:flutter/material.dart';

class BidItems extends ChangeNotifier {
  final List<Bid> _bids = [
    Bid(
      bidId: 1,
      item: Auction(
          auctionId: 1,
          item: Product(
              prodId: 1,
              imgUrl: "",
              title: "Laptop",
              price: 23000,
              dateAdded: DateTime.now()),
          auctionPrice: 22000,
          startDate: DateTime.now(),
          isSold: false,
          endDate: DateTime.now()),
      bidPrice: 23400,
      dateOfBid: DateTime.now(),
    ),
  ];

  //add bids
  void addBid(Bid bid) {
    _bids.add(bid);
    notifyListeners();
  }

  //remove bids
  void removeBid(int bidId) {
    if (bidId == null) {
      _bids.removeAt(bidId);
      notifyListeners();
    }
    return;
  }

  //update bids
  void updateBid(Bid newBid, int id) {
    if (id > 0) {
      Bid oldBid = _bids.elementAt(id);
      newBid = oldBid;
      notifyListeners();
    }
  }

  //get all bids
  List<Bid> getAllBid() {
    return _bids.toList();
  }
}
