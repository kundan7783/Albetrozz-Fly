import 'package:flutter/material.dart';

class CustomizedHolidayScreen extends StatefulWidget {
  const CustomizedHolidayScreen({super.key});

  @override
  State<CustomizedHolidayScreen> createState() =>
      _CustomizedHolidayScreenState();
}

class _CustomizedHolidayScreenState extends State<CustomizedHolidayScreen> {
  @override
  Widget build(BuildContext context) {

    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body:
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
            child: Container(
              color: Colors.black.withOpacity(0.25),
            ),
          ),

          /// 🔹 Main Content
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.06),
              child: Column(
                children: [

                  SizedBox(height: h * 0.06),

                  /// Top Chip
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: w * 0.05, vertical: h * 0.01),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Customized Holidays",
                      style: TextStyle(
                        fontSize: w * 0.04,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  SizedBox(height: h * 0.05),

                  /// Heading
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Private Holidays ",
                          style: TextStyle(
                            fontSize: w * 0.07,
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

                  const Spacer(),

                  /// 🔹 Search Bar
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
    );
  }
}