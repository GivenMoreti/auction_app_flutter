import 'package:auction_bid_app/Models/Auction/auction.dart';
import 'package:auction_bid_app/Models/Auction/product.dart';

class Bid {
  List<Auction> _bids = [
    Auction(
      item: Product(
        imgUrl: "",
        title: "foo",
        price: 23,
        dateAdded: DateTime.now(),
      ),
      auctionPrice: 23,
      startDate: DateTime.now(),
      isSold: false,
      endDate: DateTime.now(),
    ),
  ];

  //add bids
  void addBid(Auction auction) {
    _bids.add(auction);
  }

  //remove bids
  void removeBid(Auction auction) {
    if (auction != null) {
      _bids.remove(auction);
    }
    print("Bid does not exist");
  }

  //update bids
  void updateBid(Auction auction) {}

  //get all bids
  List<Auction> getAllBid() {
    return _bids.toList();
  }
}

void main() {
  Bid bid = Bid();
  bid.getAllBid();
}
