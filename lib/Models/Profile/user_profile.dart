import 'package:auction_bid_app/Models/Auction/auction.dart';
import 'package:auction_bid_app/Models/Bid/bid_model.dart';
import 'package:auction_bid_app/Models/User/user.dart';

class UserProfile {
  final int userProfileId;
  final User user;
  final String location;
  // optional fields
  final List<Bid> bids = [];
  final List<Auction> auctions = [];

  UserProfile(
      {required this.userProfileId,
      required this.user,
      required this.location});
}
