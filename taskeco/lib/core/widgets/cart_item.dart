import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String image;
  final String title;
  final String size;
  final double price;

  const CartItem({
    super.key,
    required this.image,
    required this.title,
    required this.size,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(image, width: 70, height: 70, fit: BoxFit.cover),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 4),
                  Text("\$$price", style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Text(size, style: const TextStyle(fontSize: 14)),
            const SizedBox(width: 12),
            const Icon(Icons.add_circle_outline),
            const SizedBox(width: 8),
            const Text("1"),
            const SizedBox(width: 8),
            const Icon(Icons.remove_circle_outline),
            const SizedBox(width: 12),
            const Icon(Icons.delete, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
