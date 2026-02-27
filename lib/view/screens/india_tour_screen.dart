import 'package:albetrozz_fly/data/location_data.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/tour_search_bar.dart';
import '../widgets/state_city_toggle.dart';
import '../widgets/tour_card.dart';

class IndiaTourScreen extends StatefulWidget {
  const IndiaTourScreen({super.key});

  @override
  State<IndiaTourScreen> createState() => _IndiaTourScreenState();
}

class _IndiaTourScreenState extends State<IndiaTourScreen> {
  bool isStateSelected = true;
  int currentIndex = 1;
  String selectedZone = "South";
  String selectedSeason = "Mar to Jun";
  final LocationData locationData=LocationData();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: height * 0.45,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1564507592333-c60657eea523",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const CustomAppBar(),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Column(
                  children: const [
                    Text(
                      "India Tour Packages",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text("The ancient spark of the spiritual land, with ethnic evolutionary life, completely different from anywhere on the globe, is the land where your soul awaits to  transcend!",style: TextStyle(
                        color: Colors.white),textAlign: TextAlign.center,),
                    SizedBox(height: 20,),
                    TourSearchBar(),
                  ],
                ),
              )
            ],
          ),

          const SizedBox(height: 20),

          const Text(
            "India Tour Packages By City and States",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 15),

          StateCityToggle(
            isStateSelected: isStateSelected,
            onToggle: (val) {
              setState(() {
                isStateSelected = val;
              });
            },
          ),

          const SizedBox(height: 15),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: isStateSelected ? locationData.states.length : locationData.cities.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1
                ),
                itemBuilder: (context, index) {
                  final item = isStateSelected
                      ? locationData.states[index]
                      : locationData.cities[index];

                  return TourCard(
                    image: item.image,
                    title: item.title,
                    tours: item.tours,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}