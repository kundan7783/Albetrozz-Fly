import 'package:flutter/material.dart';

class TourSearchBar extends StatelessWidget {
  const TourSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 10),
          Text(
            "Where to",
            style: TextStyle(color: Colors.grey, fontSize: 16),
          )
        ],
      ),
    );
  }
}