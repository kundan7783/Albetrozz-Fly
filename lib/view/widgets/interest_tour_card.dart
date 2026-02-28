import 'package:flutter/material.dart';

class InterestTourCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const InterestTourCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Image Section
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(10),bottom: Radius.circular(10)),
                child: Image.asset(
                  image,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 12,
                left: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blue)
                  ),
                  child: const Text(
                    "Group Tour",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),

              const Positioned(
                top: 12,
                right: 12,
                child: Icon(Icons.favorite_border, color: Colors.white),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    const Text(
                      "All Inclusive",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.blueAccent),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.black,fontSize: 12),
                ),

                const SizedBox(height: 12),

                const Text(
                  "₹57,000 /pp on twin sharing",
                  style: TextStyle(
                    fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),

                const SizedBox(height: 4),

                Chip(
                  backgroundColor: Colors.grey.shade200,
                  padding: EdgeInsets.all(2),
                  label: const Text(
                    "EMI from: ₹1,922/mo*",
                    style: TextStyle(color: Colors.black,fontSize: 12),
                  ),
                ),

                const SizedBox(height: 16),

                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10))),
                        child: const Text("Enquire Now",style: TextStyle(fontSize: 12,color: Colors.black),),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow[700],
                          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10))
                        ),
                        onPressed: () {},
                        child: const Text("Book Online",style: TextStyle(fontSize: 12,color: Colors.black)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}