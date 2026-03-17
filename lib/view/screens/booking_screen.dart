import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  Widget tagBox(String text) {
    return Container(
      margin: const EdgeInsets.only(right: 6),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text.toUpperCase(),
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
      ),
    );}
  Widget infoChip(String text) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
  Widget iconBox(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, size: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      appBar: AppBar(
          title: const Text("Booking"),
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,

      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                /// Breadcrumb
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black87, fontSize: 14),
                      children: [
                        TextSpan(text: "Home > World > Europe > "),
                        TextSpan(
                          text: "European Marvels",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                /// Tag + Icons Row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      tagBox("Group Tour"),
                      tagBox("EUMV"),
                      const Spacer(),
                      iconBox(CupertinoIcons.heart),
                      const SizedBox(width: 10),
                      iconBox(CupertinoIcons.phone),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                /// Title
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Text(
                    "European Marvels",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10),
                /// Info chips
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      infoChip("17 Days"),
                      infoChip("12 Countries • 24 Cities"),
                      const Icon(Icons.info_outline, size: 18),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                /// Main Image
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1502602898657-3e91760cbb34",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1502602898657-3e91760cbb34",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 5),

                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 5),

                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 18),
                        Icon(Icons.star, color: Colors.orange, size: 18),
                        Icon(Icons.star, color: Colors.orange, size: 18),
                        Icon(Icons.star, color: Colors.orange, size: 18),
                        Icon(Icons.star, color: Colors.orange, size: 18),

                        const SizedBox(width: 8),

                        Text(
                          "521 + guests rated 5*",
                          style: TextStyle(
                            color: Colors.blue.shade800,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        const SizedBox(width: 8),

                        Text(
                          "|",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 16,
                          ),
                        ),

                        const SizedBox(width: 8),

                        const Text(
                          "7 Reviews",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Tour Includes
                const Text(
                  "Tour Includes",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Column(
                      children: [
                        Icon(Icons.hotel, color: Colors.orange),
                        SizedBox(height: 4),
                        Text("Hotel")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.restaurant, color: Colors.orange),
                        SizedBox(height: 4),
                        Text("Meals")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.flight, color: Colors.orange),
                        SizedBox(height: 4),
                        Text("Flight")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.camera_alt, color: Colors.orange),
                        SizedBox(height: 4),
                        Text("Sightseeing")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.directions_bus, color: Colors.orange),
                        SizedBox(height: 4),
                        Text("Transport")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.assignment, color: Colors.orange),
                        SizedBox(height: 4),
                        Text("Visa")
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Row(
                  children: const [
                    Icon(Icons.support_agent, color: Colors.orange),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Tour includes the services of Veena World's Tour Manager.",
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// Tour Highlights
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Tour Highlights",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    OutlinedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        side: MaterialStateProperty.all(
                          BorderSide(color: Colors.grey),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text("View more"),
                    )
                  ],
                ),

                const SizedBox(height: 10),

                highlightItem("London Eye"),
                highlightItem("Tower of London Museum"),
                highlightItem("Madame Tussauds Wax Museum"),
                highlightItem("Amsterdam Canal Cruise"),
                highlightItem("Miniature park of Holland – Madurodam"),
                highlightItem("Bruges Carriage Ride"),
                highlightItem("Top level of the Eiffel Tower"),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.all(16),
            color: Color(0xfff5f8ff),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Title
                const Text(
                  "Want us to call you?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 12),

                /// Full Name Field
                TextField(
                  decoration: InputDecoration(
                    hintText: "Full Name*",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                /// Phone Field
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade400),
                  ),
                  child: Row(
                    children: const [
                      Text("🇮🇳"),
                      SizedBox(width: 5),
                      Icon(Icons.keyboard_arrow_down),
                      SizedBox(width: 10),
                      Text("+91"),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                /// Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow.shade600,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.phone, color: Colors.black),
                    label: const Text(
                      "Request Call Back",
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// Bottom Actions

              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: const [
                    Icon(Icons.phone, color: Colors.green),
                    SizedBox(height: 4),
                    Text("Send Itinerary",
                        style: TextStyle(decoration: TextDecoration.underline)),
                  ],
                ),

                Container(height: 30, width: 1, color: Colors.grey),

                Column(
                  children: const [
                    Icon(Icons.download),
                    SizedBox(height: 4),
                    Text("Download Brochure",
                        style: TextStyle(decoration: TextDecoration.underline)),
                  ],
                ),

                Container(height: 30, width: 1, color: Colors.grey),

                Column(
                  children: const [
                    Icon(Icons.email_outlined),
                    SizedBox(height: 4),
                    Text("Email Itinerary",
                        style: TextStyle(decoration: TextDecoration.underline)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 7,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                    spreadRadius: 1,
                    offset: Offset(0, 3), // niche shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.blue, width: 3),
                        ),
                      ),
                      child: const Text(
                        "Itinerary",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),

                    const SizedBox(width: 25),

                    const Text(
                      "Tour Details",
                      style: TextStyle(fontSize: 16),
                    ),

                    const SizedBox(width: 25),

                    const Text(
                      "Tour Information",
                      style: TextStyle(fontSize: 16),
                    ),

                    const SizedBox(width: 25),
                    const Text(
                      "Tour Details",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(width: 25),

                    const Text(
                      "Need to Know",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Itinerary (Day Wise)",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "View all days",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                /// Yellow info box
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xfff3e2b7),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Viewing itinerary for 11 Nov 2026.",
                        style: TextStyle(color: Colors.red),
                      ),

                      const SizedBox(height: 6),

                      Row(
                        children: const [
                          Icon(
                            Icons.edit,
                            size: 16,
                            color: Colors.black87,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Change Departure Date",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                /// Day List
                Column(
                  children: List.generate(10, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          /// left timeline icon
                          Column(
                            children: [
                              const Icon(Icons.location_on_outlined, size: 22),
                              Container(
                                width: 2,
                                height: 40,
                                color: Colors.grey.shade300,
                              )
                            ],
                          ),

                          const SizedBox(width: 10),

                          /// text
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Day ${index + 1} / 11 Nov, 26",
                                  style: const TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  "Arrival at London (2 Nights)",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),

                          /// plus icon
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(8),
                            child: const Icon(Icons.add),
                          )
                        ],
                      ),
                    );
                  }),
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F4F7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Know, before you book",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Read More",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),

                      Text(
                        "Please note:\n"
                            "Airline:\n"
                            "On group tours, we generally fly with airlines that are group-friendly.\n"
                            "Group tours are based on economy class.",
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                /// Map View Card
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        "https://i.imgur.com/8Km9tLL.png", // map image example
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.map, size: 20),
                            SizedBox(width: 6),
                            Text(
                              "Map View",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                /// Bottom Text
                const Center(
                  child: Text(
                    "Click here to find the road distance",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                 Container(height: 12,color: Color(0xfff3f3f3),),
                const SizedBox(height: 20),

                tourDetailsSection(),
                Container(height: 12,color: Color(0xfff3f3f3),),
                const SizedBox(height: 20),
                tourInfoSection(),
                Container(height: 12,color: Color(0xfff3f3f3),),
                const SizedBox(height: 20),
                needToKnowSection(),
                const SizedBox(height: 10),
                Container(height: 12,color: Color(0xfff3f3f3),),
                const SizedBox(height: 20),
                cancellationPolicySection(),
                const SizedBox(height: 10),
                Container(height: 12,color: Color(0xfff3f3f3),),
                const SizedBox(height: 20),
                upgradesAvailable(),




              ],
            ),
          ),
          reviewsSection(),
          locateUsSection(),
          newsletterSection()


        ],
      ),
    );
  }

  Widget upgradesAvailable() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// Title
        const Text(
          "Upgrades Available",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 3),

        const Text(
          "Wont luxury? Add luxury at minimum cost!",
          style: TextStyle(color: Colors.grey),
        ),

        const SizedBox(height: 16),

        /// Tabs
        Row(
          children: [
            _upgradesTab("Flight\nUpgrade", true),
            _upgradesTab("Prime\nSeat(s)", false),
          ],
        ),
        Divider(
          height: 1,
          thickness: 2,
          color: Color(0xff2f4f9e), // blue line like image
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text.rich(
            TextSpan(
              style: const TextStyle(fontSize: 14, color: Colors.black),
              children: [
                const TextSpan(
                  text: "Need to upgrade to business or first class? Please get in touch with our team on ",
                ),
                const TextSpan(
                  text: "1800 313 5555",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const TextSpan(
                  text: " for more details.",
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20,),



      ],
    );
  }

  Widget reviewsSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 30),
      color: const Color(0xff18324A),
      child: Column(
        children: [

          /// Title
          const Text(
            "Veena World tour reviews",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            "What are you waiting for? Chalo Bag Bharo Nikal Pado!",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 20),

          /// Horizontal Scroll Cards
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 320,
                  margin: const EdgeInsets.only(right: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      /// rating row
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.orange, size: 18),
                          const SizedBox(width: 4),
                          const Text(
                            "5",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 10),

                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.pink),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Text(
                              "Family",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.pink,
                              ),
                            ),
                          )
                        ],
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        "Nainital Mussoorie Haridwar - Pune",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          /// review text
                          const Expanded(
                            child: Text(
                              "\"The tour was very well organized and enjoyable. Thank...\"",
                              style: TextStyle(fontSize: 13),
                            ),
                          ),

                          const SizedBox(width: 10),

                          /// image
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://picsum.photos/100",
                              width: 90,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 6),

                      const Text(
                        "Read more",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 13,
                        ),
                      ),

                      const Spacer(),

                      /// bottom info
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Lalita",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Travelled in Nov, 2025",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),

                          const Text(
                            "Kunal Gaikar,\nOmkar Ambavkar",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 13,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 25),

          /// Bottom Button
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              "Read more Reviews",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _textField(String hint) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white54),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.white38),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
  }
  Widget newsletterSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      color: const Color(0xff0B2438),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Logo
          Row(
            children: [
              Image.network(
                "https://alchetron.com/cdn/veena-world-a3563b5a-59de-46b8-bb03-0b3e7769f25-resize-750.jpeg",
                height: 40,
              ),
            ],
          ),

          const SizedBox(height: 20),

          const Text(
            "Keep travelling all year round!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 6),

          const Text(
            "Subscribe to our newsletter to find travel inspiration in your inbox.",
            style: TextStyle(color: Colors.white70),
          ),

          const SizedBox(height: 20),

          /// Name
          _textField("Full Name*"),

          const SizedBox(height: 14),

          /// Email
          _textField("Email ID*"),

          const SizedBox(height: 14),

          /// Phone
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white38),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [

                Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Flag_of_India.svg/960px-Flag_of_India.svg.png",
                  width: 25,
                ),

                const SizedBox(width: 8),

                const Icon(Icons.keyboard_arrow_down, color: Colors.white),

                const SizedBox(width: 12),

                const Text(
                  "+91",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          /// Subscribe Button
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: Text(
                "Subscribe",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          /// Footer expandable
          const Divider(color: Colors.white30),

          _footerTile("Discover us"),
          _footerTile("Support"),
          _footerTile("Resources"),

          const SizedBox(height: 20),

          /// Associated with
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Associated with "),
                const SizedBox(width: 10),
                Image.network(
                  "https://www.ntaholidays.com/wp-content/uploads/2023/01/nta-iata-taai-tafi.jpg",
                  height: 30,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Divider(),
          const SizedBox(height: 15),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "*Caution: Beware of Fake Promotions or Offers ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "*Please do not believe or engage with any promotional emails, SMS or Web-link which ask you to click on a link and fill in your details. All Veena World authorized email communications are delivered from domain @veenaworld.com or @veenaworld.in or SMS from VNAWLD or 741324. *Veena World bears no liability or responsibility whatsoever for any communication which is fraudulent or misleading in nature and not received from registered domain.",
                  style: TextStyle(color: Colors.white60),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Divider(),
          const SizedBox(height: 10),
          Text("Privacy Policy     Terms & Conditions     Site Map",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
          const SizedBox(height: 10),
          Text("© 2013 - 26 Veena Patil Hospitality Pvt Ltd. All Rights Reserved.",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white60,fontSize: 13),),
          const SizedBox(height: 10),
          Text("Payments on website are secure",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white60,fontSize: 13),),



        ],
      ),
    );
  }
  Widget _footerTile(String title) {
    return ExpansionTile(
      iconColor: Colors.white,
      collapsedIconColor: Colors.white,
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      children: const [
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "Content here",
            style: TextStyle(color: Colors.white70),
          ),
        )
      ],
    );
  }

  Widget locateUsSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
           Divider(),
          SizedBox(height: 25,),
          /// Title
          Row(
            children: const [
              Icon(Icons.apartment_outlined, size: 22),
              SizedBox(width: 8),
              Text(
                "Locate Us",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          const Text(
            "Located across the country, ready to plan your dream vacation today!",
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),

          const SizedBox(height: 18),

          /// Phone
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [

              Icon(Icons.phone_outlined, size: 22),

              SizedBox(width: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "1800 313 5555",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),

                  SizedBox(height: 4),

                  Text(
                    "Request a quote or chat - we're here to help anytime!",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 18),

          /// Feedback Email
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [

              Icon(Icons.mail_outline, size: 22),

              SizedBox(width: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "For Feedback:",
                    style: TextStyle(fontSize: 14),
                  ),

                  SizedBox(height: 4),

                  Text(
                    "feedback@veenaworld.com",
                    style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 18),

          /// Enquiry Email
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [

              Icon(Icons.mail_outline, size: 22),

              SizedBox(width: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "For Enquiries:",
                    style: TextStyle(fontSize: 14),
                  ),

                  SizedBox(height: 4),

                  Text(
                    "travel@veenaworld.com",
                    style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),

          /// Social Icons
          Row(
            children: [

              const Icon(Icons.share_outlined, size: 22),

              const SizedBox(width: 12),

              _socialIcon(Icons.facebook),
              _socialIcon(Icons.play_arrow),
              _socialIcon(Icons.business),
              _socialIcon(Icons.camera_alt),
            ],
          ),

          const SizedBox(height: 12),

          const Text(
            "Reviews, podcasts, blogs and more...",
            style: TextStyle(fontSize: 13, color: Colors.black54),
          ),
        ],
      ),
    );
  }
  Widget _socialIcon(IconData icon) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: Colors.white,
        size: 18,
      ),
    );
  }


  Widget tableCell(String text, bool isHeader) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
      child: Text(
        text,
        style: TextStyle(
          color: isHeader ? Colors.white : Colors.black,
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: 11,
          height: 1.1, // line height reduce
        ),
      ),
    );
  }
  Widget cancellationPolicySection() {

    Widget bullet(String text) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(Icons.circle, size: 8, color: Colors.green),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          "Cancellation Policy & Payment Terms",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 15),

        bullet(
            "The cancellation policy applies to the tour departing from Pune on 01 Apr 2026. To change the departure city or date, please go to the ‘Departure City & Date’ section."
        ),

        bullet(
            "Cancellation charges vary depending on how many days before the tour you cancel. Please refer to the table below for details."
        ),

        const SizedBox(height: 15),

        /// Table
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Table(
            columnWidths: const {
              0: FlexColumnWidth(),
              1: FlexColumnWidth(),
              2: FlexColumnWidth(2),
              3: FlexColumnWidth(2),
              4: FlexColumnWidth(),
            },
            children: [

              /// Header
              TableRow(
                decoration: const BoxDecoration(
                  color: Color(0xff2f4c8f),
                ),
                children:  [
                  tableCell("From\nDays", true),
                  tableCell("To\nDays", true),
                  tableCell("From Date", true),
                  tableCell("To Date", true),
                  tableCell("Cancellation\nFee (%)", true),
                ],
              ),

              tableRow("121", "900", "14 Oct 2023", "01 Dec 2025", "10%"),
              tableRow("91", "120", "02 Dec 2025", "31 Dec 2025", "15%"),
              tableRow("61", "90", "01 Jan 2026", "30 Jan 2026", "20%"),
              tableRow("46", "60", "31 Jan 2026", "14 Feb 2026", "30%"),
              tableRow("31", "45", "15 Feb 2026", "01 Mar 2026", "40%"),
              tableRow("16", "30", "02 Mar 2026", "16 Mar 2026", "50%"),
              tableRow("6", "15", "17 Mar 2026", "26 Mar 2026", "75%"),
              tableRow("0", "5", "27 Mar 2026", "01 Apr 2026", "100%"),
            ],
          ),
        ),

        const SizedBox(height: 20),

        /// Payment Terms
        const Text(
          "Payment Terms",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 8),

        const Text(
          "Guest can pay by Cheque/ Demand Draft/ Debit card / Credit card / NEFT/ RTGS/ IMPS. "
              "For Debit / Credit card payment additional 1.8 % convenience charge will be applicable. "
              "Cheque / Demand draft should be in favour of \"Veena Patil Hospitality Pvt ltd\"",
          style: TextStyle(fontSize: 14),
        ),

        const SizedBox(height: 20),

        /// Remarks
        const Text(
          "Remarks",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 8),

        bullet("All meals are provided by Veena World in case the flight is delayed."),
        bullet("All meals are provided by Veena World in case the flight is delayed."),
        bullet("All meals are provided by Veena World in case the flight is delayed."),
      ],
    );
  }

  TableRow tableRow(
      String a, String b, String c, String d, String e) {
    return TableRow(
      children: [
        tableCell(a, false),
        tableCell(b, false),
        tableCell(c, false),
        tableCell(d, false),
        tableCell(e, false),
      ],
    );
  }
  Widget needToKnowSection() {
    Widget bullet(String text) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 6),
              child: Icon(
                Icons.circle,
                size: 7,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Need to Know",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 4),

        const Text(
          "Things to consider before the trip!",
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
        ),

        const SizedBox(height: 15),

        const Text(
          "Weather",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 6),

        bullet("For detailed information about weather kindly visit www.accuweather.com"),

        const SizedBox(height: 10),

        const Text(
          "Transport",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 6),

        const Text("Air Travel:", style: TextStyle(fontWeight: FontWeight.w500)),

        bullet("Pune – Delhi / Delhi – Pune"),
        bullet("We use Air India / Indigo Airlines"),

        const SizedBox(height: 8),

        const Text("Coach Travel", style: TextStyle(fontWeight: FontWeight.w500)),

        bullet("AC Vehicle Type - Depends upon group size"),

        const SizedBox(height: 10),

        const Text(
          "Documents Required for Travel",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 6),

        bullet("ADULT: Voters ID / Passport / Aadhar Card / Driving Licence"),
        bullet("CHILD: Passport / Aadhar Card / School ID"),
        bullet("INFANT: Aadhar Card / Birth certificate"),
        bullet("ID card type and ID card number is mandatory at time of booking"),
        bullet("For NRI guests valid Indian Visa / OCI Card / PIO Card is mandatory"),
        bullet("Carry two passport size photographs"),
      ],
    );
  }
  Widget highlightItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          const Icon(Icons.radio_button_checked,
              size: 10, color: Colors.teal),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
  Widget tourInfoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// Title
        const Text(
          "Tour Information",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 3),

        const Text(
          "Read this to prepare for your tour in the best way!",
          style: TextStyle(color: Colors.grey),
        ),

        const SizedBox(height: 16),

        /// Tabs
        Row(
          children: [
            _tab("Flight Details", true),
            _tab("Tour Exclusions", false),
            _tab("Advance\nPreparation", false),
          ],
        ),
        Divider(
          height: 1,
          thickness: 2,
          color: Color(0xff2f4f9e), // blue line like image
        ),
        const SizedBox(height: 20),

        _bulletItem(
          "To and fro economy class air travel for ‘Mumbai to Mumbai Tour’ guests as mentioned in the itinerary",
        ),

        _bulletItem(
          "Airfare, Airport taxes and Visa Fees",
        ),

        _bulletItem(
          "Baggage Allowance as per the airline policy",
        ),

        _bulletItem(
          "Tour Manager Services throughout the tour",
        ),

        _bulletItem(
          "Travel by comfortable A/C coach as per the tour itinerary",
        ),

        _bulletItem(
          "Entrance fees of all sightseeing places to be visited from inside",
        ),

        _bulletItem(
          "Accommodation in comfortable and convenient hotels on twin sharing basis",
        ),

        _bulletItem(
          "All Meals – Breakfast, Lunch, Dinner (set menu) as mentioned in the itinerary",
        ),

        _bulletItem(
          "All Tips – Guide, Driver & Restaurants",
        ),

        _bulletItem(
          "Cost of internal airfare as mentioned in the itinerary",
        ),

        _bulletItem(
          "Complimentary insurance up to 59 years of age",
        ),
        const SizedBox(height: 20,),

      ],
    );
  }
  Widget _bulletItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Icon(
              Icons.circle,
              size: 8,
              color: Colors.green,
            ),
          ),
          const SizedBox(width: 10),

          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
  Widget tourDetailsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// Title
        const Text(
          "Tour details",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 3),

        const Text(
          "Best facilities with no added cost.",
          style: TextStyle(color: Colors.grey),
        ),

        const SizedBox(height: 16),

        /// Tabs
        Row(
          children: [
            _tab("Flight Details", false),
            _tab("Accommodation\nDetails", true),
            _tab("Reporting &\nDropping", false),
          ],
        ),
        Divider(
          height: 1,
          thickness: 2,
          color: Color(0xff2f4f9e), // blue line like image
        ),



        /// Header
        Container(
          color: const Color(0xfff7f7f7),
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 12),
          child: Row(
            children: const [
              Expanded(
                flex: 2,
                child: Text(
                  "City - Country",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                flex: 4,
                child: Text(
                  "Hotel\nCheck In - Check Out",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),

        const SizedBox(height: 16),
        Column(
          children: List.generate(10, (index) {
            return _hotelRow(
              index,
              "Paris - France",
              "Appart'City Collection Paris Roissy CDG Airport / Novotel Paris Charles de Gaull /or similar",
              "15 Nov - 17 Nov",
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Note:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "• Flight details are tentative only. The airline, departure, arrival times and routing may change.",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 6),
              Text(
                "• Hotel details are tentative only. The hotel or place of accommodation may change.",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),

      ],
    );
  }
  Widget _tab(String title, bool active) {
    return Expanded(
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: active ? const Color(0xff2f4f9e) : const Color(0xffe7ecf5),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16)
          )
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: active ? Colors.white : Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
  Widget _upgradesTab(String title, bool active) {
    return Expanded(
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            color: active ? const Color(0xff2f4f9e) : const Color(0xffe7ecf5),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.circular(16)
            )
        ),
        child: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: active ? Colors.white : Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
  Widget _hotelRow(int index,String city, String hotel, String date) {
    return Container(
      color: index % 2 == 0 ? Colors.white : const Color(0xfff7f7f7),
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// City
          Expanded(
            flex: 2,
            child: Text(
              city,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),

          /// Hotel
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(hotel),
                const SizedBox(height: 6),

                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 16),
                    const SizedBox(width: 6),
                    Text(date),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}