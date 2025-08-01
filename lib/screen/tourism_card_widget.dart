import 'package:flutter/material.dart';
import 'package:tourism_app/models/tourism.dart';

class TourismCard extends StatelessWidget {
  const TourismCard({super.key, required this.tourism, required this.onTap});

  final Tourism tourism;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 80,
                minHeight: 80,
                maxWidth: 120,
                minWidth: 120,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(tourism.image, fit: BoxFit.cover),
              ),
            ),
            const SizedBox.square(dimension: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(tourism.name, style: const TextStyle(fontSize: 16)),
                  const SizedBox.square(dimension: 6),
                  Row(
                    children: [
                      const Icon(Icons.pin_drop),
                      const SizedBox.square(dimension: 4),
                      Expanded(
                        child: Text(
                          tourism.address,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox.square(dimension: 6),
                  Row(
                    children: [
                      const Icon(Icons.favorite, color: Colors.pink),
                      const SizedBox.square(dimension: 4),
                      Expanded(child: Text(tourism.like.toString())),
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
