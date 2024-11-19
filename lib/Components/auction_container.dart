import 'package:auction_bid_app/Models/Auction/auction.dart';
import 'package:auction_bid_app/provider/favorite_item_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuctionContainer extends StatelessWidget {
  final AuctionItem item;

  const AuctionContainer({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    // Access the provider
    final favoritesProvider =
        Provider.of<FavoriteItemsProvider>(context, listen: false);

    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              item.item.imgUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.broken_image,
                  size: 150,
                  color: Colors.grey,
                );
              },
            ),
          ),
          const SizedBox(height: 8.0),

          // Title
          Text(
            item.item.title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4.0),

          // Price
          Text(
            'Price: \$${item.item.price.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 4.0),

          // Favorite Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Added on: ${item.item.dateAdded.toLocal().toString().split(' ')[0]}',
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
              Consumer<FavoriteItemsProvider>(
                builder: (context, favoritesProvider, child) {
                  final isFavorite = favoritesProvider.isFavorite(item);
                  return IconButton(
                    onPressed: () {
                      if (isFavorite) {
                        favoritesProvider.removeFromFavorites(item);
                      } else {
                        favoritesProvider.addToFavorites(item);
                      }
                    },
                    icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.grey,
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
