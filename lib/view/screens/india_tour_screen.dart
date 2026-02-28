import 'package:albetrozz_fly/data/location_data.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/filter_button.dart';
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
  final LocationData locationData = LocationData();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "The ancient spark of the spiritual land, with ethnic evolutionary life, completely different from anywhere on the globe, is the land where your soul awaits to  transcend!",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      TourSearchBar(),
                    ],
                  ),
                ),
              ],
            ),
        
            const SizedBox(height: 20),
        
            const Text(
              "India Tour Packages By City and States",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
        
            SizedBox(
              height: height * 0.35,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: isStateSelected
                      ? locationData.states.length
                      : locationData.cities.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
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
            const SizedBox(height: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "India Tour Packages By Zone",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 25),
        
                /// Zone Buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        FilterButton(
                          title: "East & North East",
                          isSelected: selectedZone == "East",
                          onTap: () => setState(() => selectedZone = "East"),
                        ),
                        FilterButton(
                          title: "West & Central",
                          isSelected: selectedZone == "West",
                          onTap: () => setState(() => selectedZone = "West"),
                        ),
                        FilterButton(
                          title: "South",
                          isSelected: selectedZone == "South",
                          onTap: () => setState(() => selectedZone = "South"),
                        ),
                      ],
                    ),
                  ),
                ),
        
                const SizedBox(height: 15),
        
                /// Horizontal Cards
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    scrollDirection: Axis.horizontal,
                    itemCount: locationData.southZone.length,
                    itemBuilder: (context, index) {
                      final item = locationData.southZone[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: TourCard(
                          image: item.image,
                          title: item.title,
                          tours: item.tours,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding:
                  const EdgeInsets.only(top: 30,bottom: 10),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "India Tour Packages By Season",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
        
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          FilterButton(
                            title: "Mar to Jun",
                            isSelected:
                            selectedSeason == "Mar to Jun",
                            onTap: () => setState(
                                    () => selectedSeason =
                                "Mar to Jun"),
                          ),
                          const SizedBox(width: 10),
                          FilterButton(
                            title: "Jul to Oct",
                            isSelected:
                            selectedSeason == "Jul to Oct",
                            onTap: () => setState(
                                    () => selectedSeason =
                                "Jul to Oct"),
                          ),
                          const SizedBox(width: 10),
                          FilterButton(
                            title: "Nov to Feb",
                            isSelected:
                            selectedSeason == "Nov to Feb",
                            onTap: () => setState(
                                    () => selectedSeason =
                                "Nov to Feb"),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),

                      SizedBox(
                        height: 200,
                        child: ListView.builder(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 16),
                          scrollDirection: Axis.horizontal,
                          itemCount:
                          locationData.seasonData.length,
                          itemBuilder: (context, index) {
                            final item =
                            locationData.seasonData[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: TourCard(
                                image: item.image,
                                title: item.title,
                                tours: item.tours,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
