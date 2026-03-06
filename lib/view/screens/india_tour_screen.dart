import 'dart:ffi';

import 'package:albetrozz_fly/data/location_data.dart';
import 'package:albetrozz_fly/data/speciality_data.dart';
import 'package:albetrozz_fly/utils/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../models/location_model.dart';
import '../widgets/blog_card.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/filter_button.dart';
import '../widgets/interest_tour_card.dart';
import '../widgets/podcast_card.dart';
import '../widgets/speciality_card.dart';
import '../widgets/testimonial_card.dart';
import '../widgets/tour_search_bar.dart';
import '../widgets/state_city_toggle.dart';
import '../widgets/tour_card.dart';
import '../widgets/trending_tour_card.dart';

class IndiaTourScreen extends StatefulWidget {
  const IndiaTourScreen({super.key});

  @override
  State<IndiaTourScreen> createState() => _IndiaTourScreenState();
}

class _IndiaTourScreenState extends State<IndiaTourScreen> {
  bool isStateSelected = true;
  String selectedZone = "East";
  int currentIndex = 0;
  String selectedSeason = "Mar to Jun";
  String selectedInterest = "Honeymoon Special";
  String selectedTrending = "All Of India (324)";
  final LocationData locationData = LocationData();
  final SpecialityData specialityData = SpecialityData();

  List<LocationModel> get zoneList {
    switch (selectedZone) {
      case "East":
        return locationData.eastZone;
      case "West":
        return locationData.westZone;
      case "North":
        return locationData.northZone;
      case "South":
      default:
        return locationData.southZone;
    }
  }

  List<LocationModel> get seasonList {
    switch (selectedSeason) {
      case "Jul to Oct":
        return locationData.seasonDataJulToOct;
      case "Nov to Feb":
        return locationData.seasonDataNovToFeb;
      case "Mar to Jun":
      default:
        return locationData.seasonDataMarToJun;
    }
  }

  List<LocationModel> get interestList {
    switch (selectedInterest) {
      case "Women's Special":
        return specialityData.womenInterest;
      case "Senior's Special":
        return specialityData.seniorInterest;
      case "Honeymoon Special":
      default:
        return specialityData.honeymoonInterest;
    }
  }

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
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: AppColors.cardLinearGradient,
                      ),
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
                    childAspectRatio: 0.7,
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
            const SizedBox(height: 30),
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
                        FilterButton(
                          title: "North",
                          isSelected: selectedZone == "North",
                          onTap: () => setState(() => selectedZone = "North"),
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
                    itemCount: zoneList.length,
                    itemBuilder: (context, index) {
                      final item = zoneList[index];
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
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 30),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: AppColors.bgLinearGradient,
                        begin: AlignmentGeometry.topCenter,
                        end: AlignmentGeometry.bottomCenter,
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
                        const SizedBox(height: 70),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FilterButton(
                              title: "Mar to Jun",
                              isSelected: selectedSeason == "Mar to Jun",
                              onTap: () =>
                                  setState(() => selectedSeason = "Mar to Jun"),
                            ),
                            const SizedBox(width: 10),
                            FilterButton(
                              title: "Jul to Oct",
                              isSelected: selectedSeason == "Jul to Oct",
                              onTap: () =>
                                  setState(() => selectedSeason = "Jul to Oct"),
                            ),
                            const SizedBox(width: 10),
                            FilterButton(
                              title: "Nov to Feb",
                              isSelected: selectedSeason == "Nov to Feb",
                              onTap: () =>
                                  setState(() => selectedSeason = "Nov to Feb"),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),

                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            scrollDirection: Axis.horizontal,
                            itemCount: seasonList.length,
                            itemBuilder: (context, index) {
                              final item = seasonList[index];
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
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF0D1B2A), Color(0xFF1B263B)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Speciality Tours",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  SizedBox(
                    height: height * 0.45,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: specialityData.specialityTours.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 15,
                              childAspectRatio: 1.4,
                            ),
                        itemBuilder: (context, index) {
                          final item = specialityData.specialityTours[index];
                          return SpecialityCard(
                            image: item.image,
                            title: item.title,
                            departures: item.tours,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 30),
              color: const Color(0xFFE6F0FA),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "India Tour Packages By Interest",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Filter Chips
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          FilterButton(
                            title: "Honeymoon Special",
                            isSelected: selectedInterest == "Honeymoon Special",
                            onTap: () => setState(
                              () => selectedInterest = "Honeymoon Special",
                            ),
                          ),
                          FilterButton(
                            title: "Women's Special",
                            isSelected: selectedInterest == "Women's Special",
                            onTap: () => setState(
                              () => selectedInterest = "Women's Special",
                            ),
                          ),
                          FilterButton(
                            title: "Senior's Special",
                            isSelected: selectedInterest == "Senior's Special",
                            onTap: () => setState(
                              () => selectedInterest = "Senior's Special",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: height * 0.512,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      scrollDirection: Axis.horizontal,
                      itemCount: interestList.length,
                      itemBuilder: (context, index) {
                        final item = interestList[index];
                        return InterestTourCard(
                          image: item.image,
                          title: item.title,
                          subtitle: item.tours,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.42,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Listen to Our Podcasts",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        scrollDirection: Axis.horizontal,
                        itemCount: specialityData.podcasts.length,
                        itemBuilder: (context, index) {
                          final item = specialityData.podcasts[index];
                          return PodcastCard(
                            image: item["image"]!,
                            title: item["title"]!,
                            episodes: item["episodes"]!,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Popular Blogs  >",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      scrollDirection: Axis.horizontal,
                      itemCount: specialityData.blogs.length,
                      itemBuilder: (context, index) {
                        final item = specialityData.blogs[index];
                        return BlogCard(
                          image: item["image"]!,
                          title: item["title"]!,
                          time: item["time"]!,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            _buildTestimonialSection(),
            _buildTrendingSection(),
            const SizedBox(height: 60),
            TextButton(
              onPressed: () {},
              child: Text(
                "Explore 300+ Tours >",
                style: TextStyle(
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildTestimonialSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      color: const Color(0xFFE6F0FA),
      child: Column(
        children: [
          const Text(
            "Hear It from Our Happy Travelers",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          CarouselSlider.builder(
            itemCount: specialityData.testimonials.length,
            itemBuilder: (context, index, realIndex) {
              final item = specialityData.testimonials[index];

              return TestimonialCard(
                image: item["image"]!,
                title: item["title"]!,
                description: item["description"]!,
                name: item["name"]!,
                date: item["date"]!,
                rating: item["rating"]!,
              );
            },
            options: CarouselOptions(
              height: 320,
              viewportFraction: 0.92,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrendingSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Title
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Explore What’s Trending",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 15),

          /// Filter Chips
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterButton(
                    title: "All Of India (324)",
                    isSelected: selectedTrending == "All Of India (324)",
                    onTap: () =>
                        setState(() => selectedTrending = "All Of India (324)"),
                  ),
                  FilterButton(
                    title: "Rajasthan (34)",
                    isSelected: selectedTrending == "Rajasthan (34)",
                    onTap: () =>
                        setState(() => selectedTrending = "Rajasthan (34)"),
                  ),
                  FilterButton(
                    title: "Himachal Pradesh (18)",
                    isSelected: selectedTrending == "Himachal Pradesh (18)",
                    onTap: () => setState(
                      () => selectedTrending = "Himachal Pradesh (18)",
                    ),
                  ),
                  FilterButton(
                    title: "Bihar (54)",
                    isSelected: selectedTrending == "Bihar (54)",
                    onTap: () =>
                        setState(() => selectedTrending = "Bihar (54)"),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 15),

          /// Cards (NOT ListView — just Column)
          Column(
            children: specialityData.trendingTours
                .map((tour) => TrendingTourCard(tour: tour))
                .toList(),
          ),
        ],
      ),
    );
  }
}
