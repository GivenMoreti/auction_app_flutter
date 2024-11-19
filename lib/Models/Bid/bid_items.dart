
import 'package:auction_bid_app/Models/Bid/bid_model.dart';
import 'package:flutter/material.dart';

class BidItems extends ChangeNotifier {
  final List<Bid> _bids = [];

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
