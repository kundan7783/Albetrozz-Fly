import 'package:flutter/material.dart';
import '../../models/trending_model.dart';

class TrendingTourCard extends StatelessWidget {
  final TrendingModel tour;

  const TrendingTourCard({super.key, required this.tour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Image Section
          Stack(
            children: [
              ClipRRect(
                borderRadius:
                const BorderRadius.vertical(top: Radius.circular(25)),
                child: Image.network(
                  tour.image,
                  height: 230,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 15,
                left: 15,
                child: Row(
                  children: [
                    _tag("Group Tour"),
                    const SizedBox(width: 8),
                    _tag("Family"),
                    const SizedBox(width: 8),
                    _ratingTag("5 ★ (2)"),
                  ],
                ),
              ),

              const Positioned(
                top: 15,
                right: 15,
                child: Icon(Icons.favorite_border,
                    color: Colors.white),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tour.title,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "All Inclusive",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),

                const SizedBox(height: 12),

                /// Info Pills
                Row(
                  children: [
                    _infoPill(Icons.calendar_today, tour.days),
                    const SizedBox(width: 10),
                    _infoPill(Icons.location_on, tour.cities),
                  ],
                ),

                const SizedBox(height: 10),

                _infoPill(Icons.event_available, tour.dates),

                const SizedBox(height: 12),

                const Text("Tour Highlights",
                    style:
                    TextStyle(fontWeight: FontWeight.bold)),

                const SizedBox(height: 4),

                Text(tour.highlights,
                    style: const TextStyle(color: Colors.grey)),

                const Divider(height: 25),

                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          tour.price,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight:
                              FontWeight.bold),
                        ),
                        const Text(
                            "pp on twin sharing",
                            style: TextStyle(
                                color: Colors.grey)),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius:
                        BorderRadius.circular(20),
                      ),
                      child: Text(
                        "EMI from: ${tour.emi}",
                        style: const TextStyle(
                            fontSize: 12),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 15),

                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text("Compare"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                          Colors.yellow[700],
                        ),
                        onPressed: () {},
                        child: const Text("Book now"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _tag(String text) {
    return Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text,
          style: const TextStyle(fontSize: 12)),
    );
  }

  Widget _ratingTag(String text) {
    return Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text,
          style: const TextStyle(
              color: Colors.white, fontSize: 12)),
    );
  }

  Widget _infoPill(IconData icon, String text) {
    return Container(
      padding:
      const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon, size: 14),
          const SizedBox(width: 5),
          Text(text,
              style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}