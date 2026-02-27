import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class StateCityToggle extends StatelessWidget {
  final bool isStateSelected;
  final Function(bool) onToggle;

  const StateCityToggle({
    super.key,
    required this.isStateSelected,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          _buildTab("STATE", true),
          _buildTab("CITY", false),
        ],
      ),
    );
  }

  Widget _buildTab(String text, bool isState) {
    final selected = isStateSelected == isState;

    return Expanded(
      child: GestureDetector(
        onTap: () => onToggle(isState),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: selected ? AppColors.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: selected ? Colors.white : Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}