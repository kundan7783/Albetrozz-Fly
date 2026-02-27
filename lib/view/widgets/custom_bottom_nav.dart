import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _item(Icons.home_outlined, "Home", 0),
          _item(Icons.map, "India", 1),
          _item(Icons.public, "World", 2),
          _item(Icons.call, "Enquire", 3),
          _item(Icons.more_horiz, "More", 4),
        ],
      ),
    );
  }

  Widget _item(IconData icon, String label, int index) {
    final selected = currentIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon,
              color: selected ? AppColors.primary : Colors.grey),
          Text(
            label,
            style: TextStyle(
                color: selected ? AppColors.primary : Colors.grey),
          )
        ],
      ),
    );
  }
}