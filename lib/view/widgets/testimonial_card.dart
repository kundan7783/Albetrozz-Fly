import 'package:flutter/material.dart';

class TestimonialCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String name;
  final String date;
  final String rating;

  const TestimonialCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.name,
    required this.date,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(0.6),
              Colors.transparent
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text("Short Trips",
                  style: TextStyle(fontSize: 12)),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 6),
            const Text("Read More",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$name • Travelled in $date",
                  style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12),
                ),
                Row(
                  children: [
                    Text(rating,
                        style: const TextStyle(
                            color: Colors.white)),
                    const Icon(Icons.star,
                        color: Colors.orange, size: 16)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}