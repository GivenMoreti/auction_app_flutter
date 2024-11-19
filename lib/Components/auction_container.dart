import 'package:flutter/material.dart';

class AuctionContainer extends StatelessWidget {
  final String title;
  final double price;
  final DateTime dateAdded;
  final DateTime startDate;
  final DateTime endDate;
  final bool isSold;
  final String imgUrl;

  String getTimeLeft() {
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

  const AuctionContainer(
      {super.key,
      required this.title,
      required this.price,
      required this.dateAdded,
      required this.isSold,
      required this.imgUrl,
      required this.startDate,
      required this.endDate});

  @override
  Widget build(BuildContext context) {
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
              imgUrl,
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
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4.0),

          // Price
          Text(
            'Price: \$${price.toStringAsFixed(2)}',
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 4.0),

          // Sold Status
          Row(
            children: [
              const Text(
                'Sold: ',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                isSold ? "Yes" : "No",
                style: TextStyle(
                  fontSize: 16.0,
                  color: isSold ? Colors.red : Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4.0),

          // Date Added
          Text(
            'Added on: ${dateAdded.toLocal().toString().split(' ')[0]}',
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
          Text(
            'Time left: ${getTimeLeft()}',
            style: const TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
