import 'package:flutter/material.dart';

class HorizontalCard extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final double rating;
  final String imageUrl;

  const HorizontalCard({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    // Handle null or empty values by setting defaults or throwing an error
    String finalName = name.isNotEmpty ? name : 'Unknown Product';
    String finalDescription =
        description.isNotEmpty ? description : 'No Description Available';
    String finalPrice = price.isNotEmpty ? price : '\$0.00';
    double finalRating = (rating >= 0) ? rating : 0.0; // Ensure valid rating
    String finalImageUrl =
        imageUrl.isNotEmpty ? imageUrl : 'https://via.placeholder.com/150';

    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 120,
        child: Row(
          children: [
            // Displaying Image (with error handling)
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                finalImageUrl,
                width: 100,
                height: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.blueGrey[100],
                    child: const Icon(Icons.broken_image,
                        size: 50, color: Colors.white),
                  );
                },
              ),
            ),
            const SizedBox(width: 10),
            // Card Content (Text and rating)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    finalName, // Name is always set (default if null)
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    finalDescription, // Description is always set (default if null)
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        finalPrice, // Price is always set (default if null)
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 18),
                          const SizedBox(width: 4),
                          Text(
                            finalRating.toString(),
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
