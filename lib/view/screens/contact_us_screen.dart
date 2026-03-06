import 'package:flutter/material.dart';

import '../widgets/agency_card.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [

            /// 🔹 Top Section (Blue Background)
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xFFEAF2FB),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// Back + Title
                  Row(
                    children: const [
                      Icon(Icons.arrow_back),
                      SizedBox(width: 10),
                      Text(
                        "Contact Us",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Need Help?",
                    style: TextStyle(fontSize: 22),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "We’re Here for You.",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Search Bar
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const TextField(
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        icon: Icon(Icons.search, color: Colors.grey),
                        hintText: "Search by Country, City or Pincode",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  /// City Chips
                  SizedBox(
                    height: 35,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CityChip("Mumbai"),
                        CityChip("Pune"),
                        CityChip("Thane"),
                        CityChip("Ahmedabad"),
                        CityChip("Surat"),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// 🔹 Cards Section
            Expanded(
              child: ListView(
                children: [
                  const AgencyCard(
                    title:
                    "West Bengal - New Town - Ace Tours & Travels",
                    address:
                    "Ground Floor, Premises No. 05-170, Street No. 170, New Town, Kolkata - 700156",
                  ),const AgencyCard(
                    title:
                    "West Bengal - New Town - Ace Tours & Travels",
                    address:
                    "Ground Floor, Premises No. 05-170, Street No. 170, New Town, Kolkata - 700156",
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Color(0xFFf2f2f2),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        /// Title
                        const Text(
                          "Want us to call you?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// Full Name
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.person,
                            ),
                            hintText: "Full Name",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        /// Phone
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.call,
                            ),
                            hintText: "Phone Number",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        /// Email
                        TextFormField(

                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                            ),
                            hintText: "Email",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// Button
                        SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF2E5AAC),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              "Request a Callback",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        /// Contact Section
                        Container(
                          padding: const EdgeInsets.all(18),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [

                              Text(
                                "Contact us on",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              SizedBox(height: 15),

                              Row(
                                children: [
                                  Icon(Icons.phone, color: Colors.black54),
                                  SizedBox(width: 10),
                                  Text(
                                    "1800 313 5555",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF2E5AAC),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 12),

                              Row(
                                children: [
                                  Icon(Icons.email_outlined, color: Colors.black54),
                                  SizedBox(width: 10),
                                  Text(
                                    "travel@veenaworld.com",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF2E5AAC),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                  const AgencyCard(
                    title:
                    "West Bengal - New Town - Ace Tours & Travels",
                    address:
                    "Ground Floor, Premises No. 05-170, Street No. 170, New Town, Kolkata - 700156",
                  ),const AgencyCard(
                    title:
                    "West Bengal - New Town - Ace Tours & Travels",
                    address:
                    "Ground Floor, Premises No. 05-170, Street No. 170, New Town, Kolkata - 700156",
                  ),const AgencyCard(
                    title:
                    "West Bengal - New Town - Ace Tours & Travels",
                    address:
                    "Ground Floor, Premises No. 05-170, Street No. 170, New Town, Kolkata - 700156",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          _showMoreOptions(context);
        },
        backgroundColor: const Color(0xFF2E5AAC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        icon: const Icon(Icons.help_outline,color: Colors.white,),
        label: const Text("  More  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  Widget _buildOptionTile(
      IconData icon,
      String title,
      String subtitle,
      ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [

          /// Circle Icon
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFEAF2FB),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.black87),
          ),

          const SizedBox(width: 15),

          /// Text Section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
  void _showMoreOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              /// Drag Indicator
              Container(
                width: 50,
                height: 5,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              /// Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "More Contact Options",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              _buildOptionTile(
                Icons.call,
                "Request Call Back",
                "Submit an Enquiry",
              ),

              _buildOptionTile(
                Icons.flag,
                "For Indian Guests",
                "Contact Details",
              ),

              _buildOptionTile(
                Icons.public,
                "For Foreign Int. / NRIs",
                "Contact Details",
              ),

              _buildOptionTile(
                Icons.location_on,
                "Corporate Office",
                "Contact Details",
              ),

              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
class CityChip extends StatelessWidget {
  final String title;

  const CityChip(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding:
      const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text(title)),
    );
  }
}
