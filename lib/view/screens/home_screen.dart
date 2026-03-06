import 'package:albetrozz_fly/view/screens/contact_us_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../models/city_tour.dart';
import '../../models/podcast.dart';
import '../../models/testimonial.dart';
import '../../models/tour_model.dart';
import '../../models/tour_package.dart';
import '../../models/travelInsight.dart';
import '../widgets/option_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  final List<Map<String, dynamic>> specialityTours = [
    {'name': "Women's Special", 'departures': '103 Departures', 'image': 'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?w=400'},
    {'name': 'Family Tour Packages', 'departures': '1518 Departures', 'image': 'https://images.unsplash.com/photo-1607748862156-7c548e7e98f4?w=400'},
    {'name': "Couples Getaway", 'departures': '89 Departures', 'image': 'https://images.unsplash.com/photo-1529333166437-7750a6dd5a70?w=400'},
    {'name': "Seniors' Special", 'departures': '51 Departures', 'image': 'https://images.unsplash.com/photo-1581579186913-45ac3e6efe93?w=400'},
    {'name': 'Honeymoon Special', 'departures': '21 Departures', 'image': 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=400'},
    {'name': 'Luxury Group Tours', 'departures': '2 Departures', 'image': 'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=400'},
  ];
  final List<Map<String, String>> travelData = [
    {
      "image":
          "https://www.shutterstock.com/shutterstock/videos/3421690003/thumb/1.jpg",
      "title": "Discover Thailand",
      "places": "Phuket • Krabi • Bangkok +6 more",
      "date": "7 Days | 10 Jun",
      "price": "₹95,000",
    },
    {
      "image":
          "https://images.pexels.com/photos/2565822/pexels-photo-2565822.jpeg?auto=compress&cs=tinysrgb&h=627&fit=crop&w=1200",
      "title": "Images of Europe",
      "places": "Paris • Amsterdam • Brussels • Luxembourg • Titisee +11 more",
      "date": "10 Days | 23 Apr",
      "price": "₹2,85,000",
    },
    {
      "image":
          "https://www.shutterstock.com/shutterstock/videos/17430217/thumb/1.jpg",
      "title": "Explore Dubai",
      "places": "Burj Khalifa • Marina • Desert Safari +5 more",
      "date": "5 Days | 18 May",
      "price": "₹1,25,000",
    },
    {
      "image":
          "https://www.shutterstock.com/shutterstock/videos/3421690003/thumb/1.jpg",
      "title": "Discover Thailand",
      "places": "Phuket • Krabi • Bangkok +6 more",
      "date": "7 Days | 10 Jun",
      "price": "₹95,000",
    },
    {
      "image":
          "https://images.pexels.com/photos/2565822/pexels-photo-2565822.jpeg?auto=compress&cs=tinysrgb&h=627&fit=crop&w=1200",
      "title": "Images of Europe",
      "places": "Paris • Amsterdam • Brussels • Luxembourg • Titisee +11 more",
      "date": "10 Days | 23 Apr",
      "price": "₹2,85,000",
    },
    {
      "image":
          "https://www.shutterstock.com/shutterstock/videos/17430217/thumb/1.jpg",
      "title": "Explore Dubai",
      "places": "Burj Khalifa • Marina • Desert Safari +5 more",
      "date": "5 Days | 18 May",
      "price": "₹1,25,000",
    },
  ];
  final List<String> continents = const [
    "Europe",
    "Australia & NZ",
    "Japan",
    "Africa",
    "America",
  ];
  final List<Map<String, String>> tours = [
    {
      "image":
          "https://images.pexels.com/photos/1643383/pexels-photo-1643383.jpeg",
      "title": "Tunisia Malta Sicily",
      "days": "10 Days",
      "dept": "3 Dept. dates",
      "price": "₹3,75,000",
    },
    {
      "image":
          "https://images.pexels.com/photos/208701/pexels-photo-208701.jpeg",
      "title": "European Escape",
      "days": "13 Days",
      "dept": "21 Dept. dates",
      "price": "₹3,40,000",
    },
  ];
  final List<Map<String, String>> destinations = [
    {
      "image":
          "https://images.pexels.com/photos/208701/pexels-photo-208701.jpeg",
      "title": "Europe",
      "tours": "215 Tours",
      "dept": "474 Dept.",
    },
    {
      "image":
          "https://images.pexels.com/photos/753626/pexels-photo-753626.jpeg",
      "title": "South East Asia",
      "tours": "77 Tours",
      "dept": "120 Dept.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          /// App Bar
          Container(
            padding: const EdgeInsets.only(
              top: 50,
              left: 16,
              right: 16,
              bottom: 10,
            ),
            decoration:  BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade400, // light grey
                  width: 1,
                ),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.person_outline),
                    ),
                    const SizedBox(width: 15),
                    const Expanded(
                      child: Text(
                        "Discover the world!",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    _topIcon(Icons.notifications_none),
                    const SizedBox(width: 10),
                    GestureDetector(  onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUsScreen(),));
                    }, child: _topIcon(Icons.call_outlined)),
                  ],
                ),
                const SizedBox(height: 15),
                Center(
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, blurRadius: 8),
                      ],
                    ),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      // vertical center
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Start your search",
                        prefixIcon: const Icon(Icons.search),
                        contentPadding: const EdgeInsets.only(
                          top: 0,
                        ), // text top padding adjust
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /// ScrollView All Code
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /// Image Scrolling
                  SizedBox(
                    height: 230,
                    child: Stack(
                      children: [
                        PageView.builder(
                          controller: _pageController,
                          itemCount: travelData.length,
                          itemBuilder: (context, index) {
                            final item = travelData[index];
                            return ClipRRect(
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  // Image
                                  Image.network(
                                    item["image"]!,
                                    fit: BoxFit.cover,
                                    alignment: Alignment.center,
                                  ),

                                  // Dark Gradient Overlay
                                  Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        colors: [
                                          Colors.black.withOpacity(0.7),
                                          Colors.transparent,
                                        ],
                                      ),
                                    ),
                                  ),

                                  // Text Content in Center
                                  Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      // Column ko center me pack kare
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          item["title"]!,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          item["places"]!,
                                          style: const TextStyle(
                                            color: Colors.white70,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(height: 5),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              item["date"]!,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              item["price"]!,
                                              style: const TextStyle(
                                                color: Colors.yellow,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 12),
                                        // Book Now Button
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.yellow,
                                            // Color same rakha
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                blurRadius: 6,
                                                offset: const Offset(0, 3),
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: const [
                                              Text(
                                                "Book now",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              SizedBox(width: 8),
                                              Icon(
                                                Icons.arrow_forward,
                                                color: Colors.black87,
                                                size: 18,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),

                        // Indicator
                        Positioned(
                          bottom: 10,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: SmoothPageIndicator(
                              controller: _pageController,
                              count: travelData.length,
                              effect: ExpandingDotsEffect(
                                activeDotColor: Colors.white,
                                dotColor: Colors.white54,
                                dotHeight: 4,
                                dotWidth: 6,
                                spacing: 4, // yaha kam space set kiya
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///
                  Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      children: [
                        const SizedBox(height: 8),

                        /// Title
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "All-inclusive",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: " Group Tours",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// Options Row
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: const [
                              Expanded(
                                child: OptionCard(
                                  icon: Icons.help_outline,
                                  title: "Quick\nInquiry",
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: OptionCard(
                                  icon: Icons.videocam_outlined,
                                  title: "Schedule\nVideo Call",
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: OptionCard(
                                  icon: Icons.location_on_outlined,
                                  title: "Nearest\nVeena World",
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: OptionCard(
                                  icon: Icons.play_circle_outline,
                                  title: "Trending\nGetaways",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// ---------------------------------------------------------->
                  Container(
                    width: double.infinity,
                    color: Colors.grey.shade200,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: 20),

                          /// INDIA / WORLD Toggle
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "INDIA",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "WORLD",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 20),

                          /// Horizontal Scroll Section
                          SizedBox(
                            height: 410, // total height
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        _destinationCard(
                                          image:
                                              "https://images.pexels.com/photos/2565822/pexels-photo-2565822.jpeg",
                                          title: "Kerala",
                                          subtitle:
                                              "34 Tours • 70 Dept.\n58K guests travelled",
                                        ),
                                        const SizedBox(width: 16),
                                        _destinationCard(
                                          image:
                                              "https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg",
                                          title: "Goa",
                                          subtitle:
                                              "10 Tours • 3 Dept.\n8K guests travelled",
                                        ),
                                        const SizedBox(width: 16),
                                        _destinationCard(
                                          image:
                                              "https://images.pexels.com/photos/2565822/pexels-photo-2565822.jpeg",
                                          title: "Kerala",
                                          subtitle:
                                              "34 Tours • 70 Dept.\n58K guests travelled",
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 16),
                                    Row(
                                      children: [
                                        _destinationCard(
                                          image:
                                              "https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg",
                                          title: "Goa",
                                          subtitle:
                                              "10 Tours • 3 Dept.\n8K guests travelled",
                                        ),
                                        const SizedBox(width: 16),
                                        _destinationCard(
                                          image:
                                              "https://images.pexels.com/photos/2565822/pexels-photo-2565822.jpeg",
                                          title: "Kerala",
                                          subtitle:
                                              "34 Tours • 70 Dept.\n58K guests travelled",
                                        ),
                                        const SizedBox(width: 16),
                                        _destinationCard(
                                          image:
                                              "https://images.pexels.com/photos/258154/pexels-photo-258154.jpeg",
                                          title: "Goa",
                                          subtitle:
                                              "10 Tours • 3 Dept.\n8K guests travelled",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(width: 16),

                                /// Curated Card (right side)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 50.0),
                                  child: Container(
                                    width: 260, // 👈 chota width
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFFDCE6F1),
                                          Color(0xFFF2F3F5),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(24),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 10,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center, // 👈 evenly space
                                      children: [
                                        /// Top Section
                                        Column(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(12),
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  color: Colors.black87,
                                                  width: 2.5,
                                                ),
                                              ),
                                              child: const Icon(
                                                Icons.explore,
                                                size: 32, // 👈 smaller icon
                                                color: Colors.black87,
                                              ),
                                            ),

                                            const SizedBox(height: 14),

                                            const Text(
                                              "Want something more curated?",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black87,
                                              ),
                                            ),

                                            const SizedBox(height: 6),

                                            const Text(
                                              "Let's help you find the perfect destination",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black54,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 20),

                                        /// Buttons Section
                                        Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    vertical: 12,
                                                  ),
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFFFCC00),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  "Talk to a Travel Advisor",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: Colors.black87,
                                                  ),
                                                ),
                                              ),
                                            ),

                                            const SizedBox(height: 12),

                                            Container(
                                              width: double.infinity,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    vertical: 12,
                                                  ),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black54,
                                                  width: 1.2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  "Discover More",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Colors.black87,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                /// Title
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Text(
                                    "Recently Viewed Tours",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 16),

                                /// Horizontal List
                                SizedBox(
                                  height: 260,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    itemCount: tours.length,
                                    itemBuilder: (context, index) {
                                      final tour = tours[index];
                                      return _tourCard(tour);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    decoration: const BoxDecoration(
                      color: Color(0xFFd6edff), // light blue background
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /// Title
                        const Text(
                          "Most Booked Destinations",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// Horizontal List
                        SizedBox(
                          height: 260,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            itemCount: destinations.length,
                            itemBuilder: (context, index) {
                              final data = destinations[index];
                              return _destinationItem(data);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildSpecialitySection(),
                  Container(
                    height: 500,
                    // thoda extra height de diya buttons ke liye
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    color: Colors.white,
                    // 👈 poora white section
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Title
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Tour Packages from Delhi",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// Horizontal List
                        SizedBox(
                          height: 400,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            itemCount: tourPackages.length,
                            itemBuilder: (context, index) {
                              return _tourPackageCard(tourPackages[index]);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    color: const Color(0xFF071e2e),
                    child: Column(
                      children: [
                        /// Title
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: const Text(
                            "What Makes Veena World a Trusted Choice",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(height: 40),

                        /// 1️⃣ Happy Guests
                        const Text(
                          "9,24,761",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Happy Guests",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),

                        const SizedBox(height: 30),

                        /// 2️⃣ Highlighted Item (Yellow + Big)
                        const Text(
                          "72,238",
                          style: TextStyle(
                            fontSize: 36, // 👈 Bigger
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow, // 👈 Yellow
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Tours Completed",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),

                        const SizedBox(height: 30),

                        /// 3️⃣ Tours Experts
                        const Text(
                          "350+",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Tours Experts",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),

                        const SizedBox(height: 30),

                        /// 4️⃣ Destinations
                        const Text(
                          "1009+",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Tours Destinations",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Title
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Explore tour packages from",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// Horizontal List
                        SizedBox(
                          height: 260,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            itemCount: cityTours.length,
                            itemBuilder: (context, index) {
                              return _cityCard(cityTours[index]);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    color: const Color(0xFFD7E3ED), // light blue bg
                    child: Column(
                      children: [
                        const Text(
                          "Hear It from Our Happy Travelers",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 20),

                        SizedBox(
                          height: 420,
                          child: PageView.builder(
                            controller: PageController(viewportFraction: 0.88),
                            itemCount: testimonials.length,
                            itemBuilder: (context, index) {
                              return _testimonialCard(testimonials[index]);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Listen to Our Podcasts",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 300,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            itemCount: podcasts.length,
                            itemBuilder: (context, index) {
                              return _podcastCard(podcasts[index]);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    color: const Color(0xFFD7E3ED), // light blue bg
                    child: Column(
                      children: [
                        const Text(
                          "Discover Would",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 20),
                        SizedBox(
                          height: 40,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            itemCount: continents.length,
                            itemBuilder: (context, index) {

                              bool isSelected = index == 0;

                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 6),
                                child: Center(   // ✅ important
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 8),
                                    decoration: BoxDecoration(
                                      color: isSelected
                                          ? Colors.blue
                                          : Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: isSelected
                                            ? Colors.blue
                                            : Colors.grey,
                                      ),
                                    ),
                                    child: Text(
                                      continents[index],
                                      style: TextStyle(
                                        color: isSelected
                                            ? Colors.white
                                            : Colors.black87,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 20),

                        /// Horizontal List
                        SizedBox(
                          height: 400,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            itemCount: tourPackages.length,
                            itemBuilder: (context, index) {
                              return _tourPackageCard(tourPackages[index]);
                            },
                          ),
                        ),

                      ],
                    ),
                  ),

                  Container(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 25),
                          child: Text(
                            "Travel Insights & Inspiration",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),


                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          itemCount: travelInsights.length,
                          itemBuilder: (context, index) {
                            return _travelInsightCard(travelInsights[index]);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///-----------------------------------------> All Custom Design <-----------------------------------///

  Widget _travelInsightCard(TravelInsight insight) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network(
              insight.image,
              height: 125,
              width: 125,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8F0FE), // light blue background
                    borderRadius: BorderRadius.circular(30), // more rounded
                  ),
                  child: Text(
                    insight.city,
                    style: const TextStyle(
                      color: Color(0xFF1A73E8), // blue text
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  insight.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  "• ${insight.meta}",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _tourPackageCard(TourPackage tour) {
    return Container(
      width: 352,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Image Section
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                Image.network(
                  tour.image,
                  height: 210,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                /// Top Tags
                Positioned(
                  top: 10,
                  left: 10,
                  child: Row(
                    children: [
                      _tag("Group Tour"),
                      const SizedBox(width: 6),
                      _darkTag("Family"),
                      const SizedBox(width: 6),
                      _darkTag("5 ★ (3)"),
                    ],
                  ),
                ),

                /// Favorite Icon
                const Positioned(
                  top: 10,
                  right: 10,
                  child: Icon(Icons.favorite_border, color: Colors.white),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          /// Title + All Inclusive
          Row(
            children: [
              Expanded(
                child: Text(
                  tour.title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "All Inclusive",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(Icons.info_outline, size: 16, color: Colors.blue),
            ],
          ),

          const SizedBox(height: 6),

          Text(tour.duration, style: const TextStyle(color: Colors.black54)),

          const SizedBox(height: 10),

          /// Price Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${tour.price} on twin sharing",
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "EMI from ${tour.emi}",
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),

          const Spacer(),

          /// Buttons
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("Enquire Now"),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("Book Online"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _tag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text, style: const TextStyle(fontSize: 12)),
    );
  }
  Widget _darkTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, color: Colors.white),
      ),
    );
  }
  Widget _topIcon(IconData icon) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon),
    );
  }
  Widget _destinationCard({required String image, required String title, required String subtitle,}) {
    return SizedBox(
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 135,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(12),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(subtitle, style: const TextStyle(fontSize: 13)),
        ],
      ),
    );
  }
  Widget _tourCard(Map<String, String> tour) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Image Section
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  tour["image"]!,
                  height: 175,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              /// Group Tour Badge
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Group Tour",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),

              /// Favorite Icon
              const Positioned(
                top: 10,
                right: 10,
                child: Icon(Icons.favorite_border, color: Colors.white),
              ),

              /// Bottom Gradient + Title
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(16),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black54, Colors.transparent],
                    ),
                  ),
                  child: Text(
                    tour["title"]!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          /// Days & Departure
          Text(
            "${tour["days"]} • ${tour["dept"]}",
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),

          const SizedBox(height: 6),

          /// Price
          Text(
            "Starts from ${tour["price"]}/Person",
            style: const TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
  Widget _cityCard(CityTour tour) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Image Card
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.network(
                  tour.image,
                  height: 180,
                  width: 280,
                  fit: BoxFit.cover,
                ),

                /// Bottom Gradient
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black45,
                          Colors.black87,
                        ],
                      ),
                    ),
                  ),
                ),

                /// Text Overlay
                Positioned(
                  left: 16,
                  bottom: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Tour Packages From",
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      Text(
                        tour.city,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          /// Tours Info
          Text(
            tour.tours,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),

          const SizedBox(height: 6),

          /// Price
          Row(
            children: [
              const Text(
                "Starts from ",
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                tour.price,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _podcastCard(Podcast podcast) {
    return Container(
      width: 260,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Image Section
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(20),
            ),
            child: Stack(
              children: [
                Image.network(
                  podcast.image,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                /// Gradient
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black54,
                          Colors.black87,
                        ],
                      ),
                    ),
                  ),
                ),

                /// Language Badge
                Positioned(
                  left: 16,
                  bottom: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      podcast.language,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                /// Play Button
                Positioned(
                  right: 16,
                  bottom: 16,
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// Bottom White Section
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  podcast.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  podcast.episodes,
                  style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _testimonialCard(Testimonial data) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Stack(
          children: [
            /// Image
            Image.network(
              data.image,
              height: 420,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            /// Bottom Gradient
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black54,
                      Colors.black87,
                    ],
                  ),
                ),
              ),
            ),

            /// Content
            Positioned(
              left: 20,
              right: 20,
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Tag
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text("Short Trips"),
                  ),

                  const SizedBox(height: 10),

                  /// Location
                  Text(
                    data.location,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  /// Description
                  Text(
                    data.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.white70),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    "Read More",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  /// Name + Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${data.name} • Travelled in ${data.date}",
                        style: const TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Text(
                            data.rating,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Icon(
                            Icons.star,
                            color: Colors.orange,
                            size: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _destinationItem(Map<String, String> data) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Image Card
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Stack(
              children: [
                Image.network(
                  data["image"]!,
                  height: 220,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),

                /// Gradient Overlay
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.black54, Colors.transparent],
                      ),
                    ),
                    child: Text(
                      data["title"]!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          /// Tours + Departure
          Center(
            child: Text(
              "${data["tours"]} • ${data["dept"]}",
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildSpecialitySection() {
    return Container(
      color: const Color(0xFF0d1b2e),
      padding: const EdgeInsets.only(top: 24, bottom: 28),
      child: Column(
        children: [
          const Text(
            'Speciality Tours',
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 18),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 20,
              childAspectRatio: 0.88,
            ),
            itemCount: specialityTours.length,
            itemBuilder: (context, i) {
              final item = specialityTours[i];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.network(
                            item['image'],
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(color: Colors.grey.shade700),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.transparent, Colors.black.withOpacity(0.65)],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            right: 10,
                            child: Text(
                              item['name'],
                              style: const TextStyle(
                                color: Color(0xFFFFD700),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      item['departures'],
                      style: const TextStyle(color: Colors.white60, fontSize: 12),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
