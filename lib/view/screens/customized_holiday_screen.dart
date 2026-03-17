import 'package:flutter/material.dart';
import 'dart:async';

class CustomizedHolidayScreen extends StatefulWidget {
  const CustomizedHolidayScreen({super.key});

  @override
  State<CustomizedHolidayScreen> createState() =>
      _CustomizedHolidayScreenState();
}

class _CustomizedHolidayScreenState extends State<CustomizedHolidayScreen> {
  int selectedIndex = 0;
  PageController pageController = PageController();
  int currentPage = 0;

  List<String> images = [
    "https://picsum.photos/400/200",
    "https://picsum.photos/401/200",
    "https://picsum.photos/402/200",
  ];
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (currentPage < images.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    List<Map<String, String>> indiaDestinations = [
      {"image": "https://picsum.photos/400/300", "name": "Andaman & Nicobar"},
      {"image": "https://picsum.photos/401/300", "name": "Goa"},
      {"image": "https://picsum.photos/402/300", "name": "Gujarat"},
    ];

    List<Map<String, String>> worldDestinations = [
      {"image": "https://picsum.photos/403/300", "name": "Maldives"},
      {"image": "https://picsum.photos/404/300", "name": "Dubai"},
      {"image": "https://picsum.photos/405/300", "name": "Switzerland"},
    ];

    /// current list
    List<Map<String, String>> currentList = selectedIndex == 0
        ? indiaDestinations
        : worldDestinations;

    PageController pageController = PageController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Customized Holidays", style: TextStyle(fontSize: 17)),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              /// 🔹 Background Image
              Positioned.fill(
                child: Image.asset(
                  "assets/images/grass.png",
                  fit: BoxFit.cover,
                ),
              ),

              /// 🔹 Dark Overlay
              Positioned.fill(
                child: Container(color: Colors.black.withOpacity(0.25)),
              ),

              /// 🔹 Main Content
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * 0.06),
                  child: Column(
                    children: [
                      SizedBox(height: h * 0.03),

                      /// Top Chip
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: w * 0.05,
                          vertical: h * 0.01,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Customized Holidays",
                          style: TextStyle(
                            fontSize: w * 0.04,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.02),

                      /// Heading
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Private Holidays Tailor-made for you",
                              style: TextStyle(
                                fontSize: w * 0.04,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            TextSpan(
                              text: "Tailor-made for you",
                              style: TextStyle(
                                fontSize: w * 0.06,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: h * 0.03),

                      Text(
                        "Your Trip, Your Pace   •   Flexible Travel Dates",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: w * 0.035,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: h * 0.01),

                      Text(
                        "Personalised Itineraries   •   Dedicated Travel Advisor",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: w * 0.035,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: h * 0.04),
                      Container(
                        margin: EdgeInsets.only(bottom: h * 0.05),
                        padding: EdgeInsets.symmetric(horizontal: w * 0.04),
                        height: h * 0.075,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(
                            color: Colors.blue.shade700,
                            width: 2,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search "Europe"',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),

                            CircleAvatar(
                              backgroundColor: Colors.blue.shade700,
                              child: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.01),
          Column(
            children: [
              Text(
                "Enter your Contact details and our Customized Holidays team will get in touch you as soon as possible!",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: h * 0.02),
              Container(
                height: h * 0.06,
                width: w * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.yellow,
                ),
                child: Center(
                  child: Text(
                    "Enquire Now",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              SizedBox(height: h * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.phone, size: 18),
                        SizedBox(width: 5),
                        Text(
                          "1800 313 55555",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 5),

                  SizedBox(
                    height: 10,
                    child: VerticalDivider(color: Colors.black, thickness: 1.2),
                  ),
                  SizedBox(width: 10),

                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Icon(Icons.mail_outline, size: 18),
                        SizedBox(width: 5),
                        Text(
                          "rakesh@gmail.com",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: h * 0.02),
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Unforgettable destinations, Tailored for you.",
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                ),

                const SizedBox(height: 6),

                const Text(
                  "Explore all Destinations",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 20),

                /// Toggle Buttons
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: selectedIndex == 0
                                ? const Color(0xff3B5BA9)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Center(
                            child: Text(
                              "India",
                              style: TextStyle(
                                color: selectedIndex == 0
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: selectedIndex == 1
                                ? const Color(0xff3B5BA9)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Center(
                            child: Text(
                              "World",
                              style: TextStyle(
                                color: selectedIndex == 1
                                    ? Colors.white
                                    : Colors.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// Horizontal List
                SizedBox(
                  height: 220,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: currentList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: w * 0.55,
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                currentList[index]["image"]!,
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              currentList[index]["name"]!,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Text("Explore top-rated destinations loved by Guests ",textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),
          SizedBox(height:h* 0.01,),
          Text("Popular Holiday Destinations",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  width: 260,
                  margin: const EdgeInsets.only(right: 16),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        /// Image
                        ClipRRect(
                          borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(18)),
                          child: Image.network(
                            "https://picsum.photos/400/300",
                            height: 150,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),

                        /// Details
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              const Text(
                                "Gir Dwarka Somnath",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 8),

                              Row(
                                children: const [

                                  Text("5 Days"),

                                  SizedBox(width: 10),

                                  Icon(Icons.square, size: 6, color: Colors.grey),

                                  SizedBox(width: 10),

                                  Text("3 Cities"),

                                  SizedBox(width: 10),

                                  Icon(Icons.square, size: 6, color: Colors.grey),

                                  SizedBox(width: 10),

                                  Text(
                                    "₹29,000",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),

                                ],
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: h *0.01,),
          Center(
            child: Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: PageView.builder(
                  controller: pageController,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Image.network(
                      images[index],
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
