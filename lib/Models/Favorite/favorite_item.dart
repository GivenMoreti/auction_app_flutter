import 'package:auction_bid_app/Models/Auction/product.dart';
import 'package:flutter/material.dart';

class FavoriteAuction {
  final Product item;
  final DateTime dateAdded;

  FavoriteAuction({
    required this.dateAdded,
    required this.item,
  });
}
