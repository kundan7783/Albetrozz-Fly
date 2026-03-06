import 'package:flutter/material.dart';

class AgencyCard extends StatelessWidget {
  final String title;
  final String address;

  const AgencyCard({super.key, required this.title, required this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          /// 🔹 Title + Call Button
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.yellow.shade600,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.call, color: Colors.black),
              ),
            ],
          ),

          const SizedBox(height: 12),

          /// 🔹 Tags Row
          Row(
            children: [
              _buildTag("Sales Partner", Colors.orange.shade50, Colors.orange),
              const SizedBox(width: 10),
              _buildTag("OPEN", Colors.green.shade50, Colors.green),
            ],
          ),

          const SizedBox(height: 16),

          /// 🔹 Address
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.location_on_outlined, size: 18),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  address,
                  style: const TextStyle(color: Colors.black87),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          const Text(
            "Get Directions",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
          ),

          const SizedBox(height: 10),

          Row(
            children: const [
              Icon(Icons.access_time, size: 18),
              SizedBox(width: 8),
              Text("Mon to Sat, 10AM - 7PM"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String text, Color bgColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
