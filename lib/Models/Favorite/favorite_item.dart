import 'package:auction_bid_app/Models/Product/product.dart';
import 'package:flutter/material.dart';

class FavoriteAuction {
  final Product item;
  final DateTime dateAdded;

  FavoriteAuction({
    required this.dateAdded,
    required this.item,
  });
}
