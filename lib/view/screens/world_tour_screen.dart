import 'package:flutter/material.dart';



class WorldTourScreen extends StatefulWidget {
  const WorldTourScreen({super.key});

  @override
  State<WorldTourScreen> createState() => _WorldTourScreenState();
}

class _WorldTourScreenState extends State<WorldTourScreen> {
  bool _isCities = true;
  String _selectedRegion = 'Europe';
  String _selectedSeason = 'Mar to Jun';

  final Color primaryBlue = const Color(0xFF1A3A8C);

  String _selectedInterest = 'Honeymoon Special';

  final List<String> interestTabs = [
    'Honeymoon Special', "Women's Special", "Seniors' Special", 'Family Tour', 'Luxury'
  ];

  final List<Map<String, dynamic>> specialityTours = [
    {'name': "Women's Special", 'departures': '103 Departures', 'image': 'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?w=400'},
    {'name': 'Family Tour Packages', 'departures': '1518 Departures', 'image': 'https://images.unsplash.com/photo-1607748862156-7c548e7e98f4?w=400'},
    {'name': "Couples Getaway", 'departures': '89 Departures', 'image': 'https://images.unsplash.com/photo-1529333166437-7750a6dd5a70?w=400'},
    {'name': "Seniors' Special", 'departures': '51 Departures', 'image': 'https://images.unsplash.com/photo-1581579186913-45ac3e6efe93?w=400'},
    {'name': 'Honeymoon Special', 'departures': '21 Departures', 'image': 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=400'},
    {'name': 'Luxury Group Tours', 'departures': '2 Departures', 'image': 'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=400'},
  ];

  String _selectedTrending = 'All Of World (507)';

  final List<String> trendingTabs = [
    'All Of World (507)', 'Europe', 'South East Asia', 'Australia New Zealand', 'Africa'
  ];

  final List<Map<String, dynamic>> trendingPackages = [
    {
      'title': "Women's Special Thailand",
      'badge1': 'Group Tour',
      'badge2': "Women's Special",
      'isNewlyLaunched': false,
      'rating': '5',
      'reviews': '1',
      'days': '4 Days',
      'cities': '2 Cities',
      'dept': '2 Dept. dates from 1 Cities',
      'highlights': 'Alcazar Show, Coral Island, Gems Gallery, Scientific Thai Massage',
      'price': '₹49,000/',
      'emi': 'EMI from: ₹1,652/mo*',
      'image': 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=600',
    },
    {
      'title': 'Kuala Lumpur Malaysia',
      'badge1': 'Group Tour',
      'badge2': 'Family',
      'isNewlyLaunched': true,
      'rating': '0',
      'reviews': '0',
      'days': '4 Days',
      'cities': '2 Cities',
      'dept': '1 Dept. dates from 1 Cities',
      'highlights': 'Observatory Deck of the K.L. Tower, Genting Sky Worlds Outdoor',
      'price': '₹49,000/',
      'emi': 'EMI from: ₹1,652/mo*',
      'image': 'https://images.unsplash.com/photo-1596422846543-75c6fc197f07?w=600',
    },
    {
      'title': 'Pattaya City Tour',
      'badge1': 'Group Tour',
      'badge2': 'Family',
      'isNewlyLaunched': false,
      'rating': '5',
      'reviews': '62',
      'days': '5 Days',
      'cities': '3 Cities',
      'dept': '3 Dept. dates from 2 Cities',
      'highlights': 'Coral Island, Nong Nooch Garden, Alcazar Show, Walking Street',
      'price': '₹45,000/',
      'emi': 'EMI from: ₹1,500/mo*',
      'image': 'https://images.unsplash.com/photo-1552465011-b4e21bf6e79a?w=600',
    },
    {
      'title': 'Singapore Explorer',
      'badge1': 'Group Tour',
      'badge2': 'Family',
      'isNewlyLaunched': false,
      'rating': '4',
      'reviews': '44',
      'days': '6 Days',
      'cities': '1 City',
      'dept': '2 Dept. dates from 1 Cities',
      'highlights': 'Gardens by the Bay, Universal Studios, Sentosa Island, Marina Bay',
      'price': '₹72,000/',
      'emi': 'EMI from: ₹2,400/mo*',
      'image': 'https://images.unsplash.com/photo-1525625293386-3f8f99389edd?w=600',
    },
    {
      'title': 'Bali Honeymoon Special',
      'badge1': 'Group Tour',
      'badge2': 'Honeymoon Special',
      'isNewlyLaunched': false,
      'rating': '5',
      'reviews': '87',
      'days': '7 Days',
      'cities': '3 Cities',
      'dept': '4 Dept. dates from 2 Cities',
      'highlights': 'Tanah Lot Temple, Ubud Monkey Forest, Kecak Dance, Rice Terraces',
      'price': '₹68,000/',
      'emi': 'EMI from: ₹2,266/mo*',
      'image': 'https://images.unsplash.com/photo-1537996194471-e657df975ab4?w=600',
    },
  ];

  final List<Map<String, dynamic>> interestPackages = [
    {
      'title': 'Honeymoon Special Thailand',
      'badge1': 'Group Tour',
      'badge2': 'Honeymoon Special',
      'rating': '5',
      'reviews': '38',
      'days': '6 Days',
      'info': '1 Country 2 Cities • 2 Dept.',
      'price': '₹79,000/pp on twin sharing',
      'emi': 'EMI from: ₹2,664/mo*',
      'image': 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=600',
    },
    {
      'title': 'Honeymoon Bali Escape',
      'badge1': 'Group Tour',
      'badge2': 'Honeymoon Special',
      'rating': '4',
      'reviews': '52',
      'days': '5 Days',
      'info': '1 Country 3 Cities • 3 Dept.',
      'price': '₹65,000/pp on twin sharing',
      'emi': 'EMI from: ₹2,166/mo*',
      'image': 'https://images.unsplash.com/photo-1537996194471-e657df975ab4?w=600',
    },
    {
      'title': 'Paris Romance Special',
      'badge1': 'Group Tour',
      'badge2': 'Honeymoon Special',
      'rating': '4',
      'reviews': '29',
      'days': '8 Days',
      'info': '2 Countries 4 Cities • 2 Dept.',
      'price': '₹1,20,000/pp on twin sharing',
      'emi': 'EMI from: ₹4,000/mo*',
      'image': 'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=600',
    },
  ];

  final List<Map<String, dynamic>> cities = [
    {'name': 'Bali', 'tours': '12 Tours', 'image': 'https://images.unsplash.com/photo-1537996194471-e657df975ab4?w=400'},
    {'name': 'Paris', 'tours': '45 Tours', 'image': 'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=400'},
    {'name': 'Pattaya', 'tours': '16 Tours', 'image': 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400'},
    {'name': 'London', 'tours': '28 Tours', 'image': 'https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?w=400'},
    {'name': 'Dubai', 'tours': '33 Tours', 'image': 'https://images.unsplash.com/photo-1512453979798-5ea266f8880c?w=400'},
    {'name': 'Tokyo', 'tours': '21 Tours', 'image': 'https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?w=400'},
    {'name': 'Rome', 'tours': '19 Tours', 'image': 'https://images.unsplash.com/photo-1552832230-c0197dd311b5?w=400'},
    {'name': 'New York', 'tours': '37 Tours', 'image': 'https://images.unsplash.com/photo-1490644658840-3f2e3f8c5625?w=400'},
    {'name': 'Singapore', 'tours': '24 Tours', 'image': 'https://images.unsplash.com/photo-1525625293386-3f8f99389edd?w=400'},
    {'name': 'Sydney', 'tours': '18 Tours', 'image': 'https://images.unsplash.com/photo-1506973035872-a4ec16b8e8d9?w=400'},
  ];
  final List<Map<String, dynamic>> countries = [
    {'name': 'France', 'tours': '52 Tours', 'image': 'https://images.unsplash.com/photo-1549144511-f099e773c147?w=400'},
    {'name': 'Thailand', 'tours': '38 Tours', 'image': 'https://images.unsplash.com/photo-1528360983277-13d401cdc186?w=400'},
    {'name': 'UK', 'tours': '44 Tours', 'image': 'https://images.unsplash.com/photo-1526129318478-62ed807ebdf9?w=400'},
    {'name': 'Japan', 'tours': '29 Tours', 'image': 'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e?w=400'},
    {'name': 'Italy', 'tours': '41 Tours', 'image': 'https://images.unsplash.com/photo-1552832230-c0197dd311b5?w=400'},
    {'name': 'USA', 'tours': '63 Tours', 'image': 'https://images.unsplash.com/photo-1534430480872-3498386e7856?w=400'},
    {'name': 'Australia', 'tours': '35 Tours', 'image': 'https://images.unsplash.com/photo-1506973035872-a4ec16b8e8d9?w=400'},
    {'name': 'Singapore', 'tours': '27 Tours', 'image': 'https://images.unsplash.com/photo-1525625293386-3f8f99389edd?w=400'},
    {'name': 'Germany', 'tours': '33 Tours', 'image': 'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?w=400'},
    {'name': 'Spain', 'tours': '48 Tours', 'image': 'https://images.unsplash.com/photo-1509356843151-3e7d96241e11?w=400'},
  ];
  final List<Map<String, dynamic>> regions = [
    {
      'name': 'Europe',
      'tours': '216 Tours',
      'image': 'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?w=400',
    },
    {
      'name': 'Central and eastern europe',
      'tours': '19 Tours',
      'image': 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=400',
    },
    {
      'name': 'Scandinavia',
      'tours': '24 Tours',
      'image': 'https://images.unsplash.com/photo-1509356843151-3e7d96241e11?w=400',
    },
    {
      'name': 'Mediterranean',
      'tours': '31 Tours',
      'image': 'https://images.unsplash.com/photo-1534430480872-3498386e7856?w=400',
    },
  ];

  final List<Map<String, dynamic>> happyTravelers = [
    {
      'tag': "Seniors' Special",
      'title': "Seniors' Special Sri Lanka",
      'review': 'Our Sri Lanka trip was absolutely beautiful and memorable. We are very grateful to our tour manager Akhilesh for making it so special...',
      'name': 'Vrunda',
      'month': 'February,2026',
      'rating': '5.0',
      'image': 'https://images.unsplash.com/photo-1529156069898-49953e39b3ac?w=600',
    },
    {
      'tag': 'Family Tour',
      'title': 'Family Tour Singapore',
      'review': 'Singapore trip was absolutely amazing! Kids loved Universal Studios and Gardens by the Bay. Tour manager was very helpful throughout...',
      'name': 'Rahul',
      'month': 'January,2026',
      'rating': '5.0',
      'image': 'https://images.unsplash.com/photo-1525625293386-3f8f99389edd?w=600',
    },
    {
      'tag': 'Honeymoon Special',
      'title': 'Honeymoon Special Bali',
      'review': 'Bali was a dream come true! Every detail was perfectly arranged. The hotel, food, and sightseeing were all top-notch...',
      'name': 'Priya',
      'month': 'January,2026',
      'rating': '5.0',
      'image': 'https://images.unsplash.com/photo-1537996194471-e657df975ab4?w=600',
    },
    {
      'tag': "Women's Special",
      'title': "Women's Special Thailand",
      'review': 'Amazing experience with a wonderful group of ladies! The tour was well organized and every moment was memorable and fun...',
      'name': 'Sneha',
      'month': 'December,2025',
      'rating': '4.0',
      'image': 'https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=600',
    },
  ];

  final List<Map<String, dynamic>> seasonPackages = [
    {'name': 'Swiss Alps', 'tours': '14 Tours', 'image': 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400'},
    {'name': 'Desert Safari', 'tours': '9 Tours', 'image': 'https://images.unsplash.com/photo-1509316785289-025f5b846b35?w=400'},
    {'name': 'Santorini', 'tours': '18 Tours', 'image': 'https://images.unsplash.com/photo-1570077188670-e3a8d69ac5ff?w=400'},
    {'name': 'Cherry Blossom', 'tours': '11 Tours', 'image': 'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?w=400',},
    {'name': 'Maldives', 'tours': '16 Tours', 'image': 'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?w=400'},
    {'name': 'Northern Lights', 'tours': '8 Tours', 'image': 'https://images.unsplash.com/photo-1531366936337-7c912a4589a7?w=400'},
  ];
  final List<String> regionTabs = ['Europe', 'Australia', 'America', 'Africa & Middle East','Asia'];
  final List<String> seasonTabs = ['Mar to Jun', 'Jul to Oct', 'Nov to Feb'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHero(),

                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Text(
                    'Explore Best World Tour Packages By Country and Cities',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 16),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey.shade200),
                    ),
                    child: Row(
                      children: [
                        _toggleBtn('CITIES', _isCities, () => setState(() => _isCities = true)),
                        _toggleBtn('COUNTRIES', !_isCities, () => setState(() => _isCities = false)),
                      ],
                    ),
                  ),
                ),
                 SizedBox(height: 18,),
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: ((_isCities ? cities.length : countries.length) / 2).ceil(),
                    itemBuilder: (context, i) {
                      final items = _isCities ? cities : countries;
                      final top = items[i * 2];
                      final hasBottom = (i * 2 + 1) < items.length;
                      final bottom = hasBottom ? items[i * 2 + 1] : null;
                      return SizedBox(
                        width: 160,
                        child: Column(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 11, bottom: 7),
                                child: _destinationCard(top['name'], top['tours'], top['image']),
                              ),
                            ),
                            if (bottom != null)
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 11, top: 7),
                                  child: _destinationCard(bottom['name'], bottom['tours'], bottom['image']),
                                ),
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: const Text(
                    'World Tour Packages By Regions',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                ),
                const SizedBox(height: 14),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: regionTabs.map((tab) {
                      final selected = _selectedRegion == tab.split(' ').first;
                      return GestureDetector(
                        onTap: () => setState(() => _selectedRegion = tab.split(' ').first),
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                          decoration: BoxDecoration(
                            color: selected ? primaryBlue : Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color: selected ? primaryBlue : Colors.grey.shade300),
                          ),
                          child: Text(
                            tab,
                            style: TextStyle(
                              color: selected ? Colors.white : Colors.grey.shade600,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: 15),

                SizedBox(
                  height: 170,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: regions.length,
                    itemBuilder: (context, i) {
                      final r = regions[i];
                      return _regionCard(r['name'], r['tours'], r['image']);
                    },
                  ),
                ),

                const SizedBox(height: 30),

                _buildSeasonSection(),
                _buildSpecialitySection(),
                _buildByInterestSection(),
                _buildTrendingSection(),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Text(
                            'Explore 500+ Tours',
                            style: TextStyle(
                              color: primaryBlue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xFF1A3A8C),
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(Icons.arrow_forward_ios, size: 14, color: Color(0xFF1A3A8C)),
                        ],
                      ),
                    ),
                  ),
                ),

                _buildHappyTravelersSection(),
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget _buildHero() {
    return Stack(
      children: [
        SizedBox(
          height: 390,
          width: double.infinity,
          child: Image.network(
            'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=800',
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => Container(
              color: const Color(0xFF1a3a5c),
            ),
          ),
        ),

        Container(
          height: 390,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.35),
                Colors.black.withOpacity(0.2),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.75),
              ],
            ),
          ),
        ),


        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'World Tours',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.3,
                  ),
                ),
                Row(
                  children: [
                    _topIconBtn(Icons.notifications_outlined),
                    const SizedBox(width: 10),
                    _topIconBtn(Icons.phone_in_talk_outlined),
                  ],
                ),
              ],
            ),
          ),
        ),


        Positioned(
          bottom: 80,
          left: 0,
          right: 0,
          child: Column(
            children: const [
              Text(
                'World Tour Packages',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.2,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28),
                child: Text(
                  'The unpredictable charms spread across the foreign lands, are waiting to be known, waiting to be experienced!',
                  style: TextStyle(color: Colors.white70, fontSize: 13, height: 1.5),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),

        // Search bar
        Positioned(
          bottom: 18,
          left: 16,
          right: 16,
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.15), blurRadius: 10, offset: const Offset(0, 4))],
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Where to',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                prefixIcon: Icon(Icons.search, color: Colors.grey, size: 22),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 15),
              ),
            )
          ),
        ),
      ],
    );
  }

  Widget _buildSeasonSection() {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          // Background image
          SizedBox(
            width: double.infinity,
            child: Image.network(
              'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800',
              fit: BoxFit.cover,
              height: 420,
              errorBuilder: (_, __, ___) => Container(height: 420, color: const Color(0xFF0d2137)),
            ),
          ),
          // Dark overlay
          Container(
            height: 420,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.65),
                  Colors.black.withOpacity(0.75),
                ],
              ),
            ),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 28),
            child: Column(
              children: [
                const Text(
                  'World Tour Packages By Season',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 110),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: seasonTabs.map((tab) {
                    final sel = _selectedSeason == tab;
                    return GestureDetector(
                      onTap: () => setState(() => _selectedSeason = tab),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.symmetric(horizontal:24, vertical: 6),
                        decoration: BoxDecoration(
                          color: sel ? primaryBlue : Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(22),
                          border: Border.all(color: Colors.white30),
                        ),
                        child: Text(
                          tab,
                          style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 20),

                // Season cards
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: seasonPackages.length,
                    itemBuilder: (context, i) {
                      final p = seasonPackages[i];
                      return _seasonCard(p['name'], p['tours'], p['image']);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _topIconBtn(IconData icon) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.15), blurRadius: 6)],
      ),
      child: Icon(icon, color: Colors.black87, size: 21),
    );
  }

  Widget _toggleBtn(String label, bool active, VoidCallback onTap) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(right: 5,left: 5),
          child: Container(
            height: 38,
            decoration: BoxDecoration(
              color: active ? primaryBlue : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            alignment: Alignment.center,
            child: Text(
              label,
              style: TextStyle(
                color: active ? Colors.white : Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _destinationCard(String name, String tours, String imageUrl) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            height: 100,
            width: double.infinity,
            errorBuilder: (_, __, ___) => Container(color: Colors.grey.shade400),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  tours,
                  style: const TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _regionCard(String name, String tours, String imageUrl) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(color: Colors.grey.shade400),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.75)],
                ),
              ),
            ),
            Positioned(
              bottom: 12,
              left: 16,
              right: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    tours,
                    style: const TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _seasonCard(String name, String tours, String imageUrl) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(color: Colors.grey.shade600),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    tours,
                    style: const TextStyle(color: Colors.white70, fontSize: 11),
                  ),
                ],
              ),
            ),
          ],
        ),
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

  Widget _buildByInterestSection() {
    return Container(
      color: const Color(0xFFDDEBF7),
      padding: const EdgeInsets.only(top: 22, bottom: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'World Tour Packages By Interest',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
          ),
          const SizedBox(height: 14),

          // Interest tabs
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: interestTabs.map((tab) {
                final sel = _selectedInterest == tab;
                return GestureDetector(
                  onTap: () => setState(() => _selectedInterest = tab),
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                    decoration: BoxDecoration(
                      color: sel ? primaryBlue : Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(color: sel ? primaryBlue : Colors.grey.shade300),
                    ),
                    child: Text(
                      tab,
                      style: TextStyle(
                        color: sel ? Colors.white : Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 16),

          // Package cards
          SizedBox(
            height: 390,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: interestPackages.length,
              itemBuilder: (context, i) {
                final p = interestPackages[i];
                return Container(
                  width: 312,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8, offset: const Offset(0, 3))],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Image + badges
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          child: Stack(
                            children: [
                              Image.network(
                                p['image'],
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => Container(height: 200, color: Colors.grey.shade300),
                              ),
                              Positioned(
                                top: 10,
                                left: 8,
                                child: Row(
                                  children: [
                                    _badge(p['badge1'], Colors.white, Colors.black87),
                                    const SizedBox(width: 6),
                                    _badge(p['badge2'], const Color(0xFF2d4a6b), Colors.white),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 44,
                                child: _badge('${p['rating']} ⭐ (${p['reviews']})', Colors.white, Colors.black87),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                  child: const Icon(Icons.favorite_border, size: 18, color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Details
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(p['title'],
                                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: const [
                                      Text('All Inclusive', style: TextStyle(color: Colors.blue, fontSize: 11)),
                                      SizedBox(width: 4),
                                      Icon(Icons.info_outline, color: Colors.blue, size: 14),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            Text(p['info'], style: const TextStyle(color: Colors.grey, fontSize: 12)),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(p['price'], style: const TextStyle(fontSize: 12, color: Colors.black87)),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(p['emi'], style: const TextStyle(fontSize: 11, color: Colors.black54)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Expanded(
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                      side: const BorderSide(color: Colors.black87),
                                      padding: const EdgeInsets.symmetric(vertical: 12),
                                    ),
                                    child: const Text('Enquire Now',
                                        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600)),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFFFD700),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                      padding: const EdgeInsets.symmetric(vertical: 12),
                                      elevation: 0,
                                    ),
                                    child: const Text('Book Online',
                                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _badge(String text, Color bg, Color textColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(20)),
      child: Text(text, style: TextStyle(color: textColor, fontSize: 11, fontWeight: FontWeight.w500)),
    );
  }
  Widget _buildTrendingSection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 22, bottom: 130),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Explore What\'s Trending',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
          ),
          const SizedBox(height: 14),

          // Trending tabs
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: trendingTabs.map((tab) {
                final sel = _selectedTrending == tab;
                return GestureDetector(
                  onTap: () => setState(() => _selectedTrending = tab),
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                    decoration: BoxDecoration(
                      color: sel ? primaryBlue : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: sel ? primaryBlue : Colors.grey.shade300),
                    ),
                    child: Text(
                      tab,
                      style: TextStyle(
                        color: sel ? Colors.white : Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 16),


          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: trendingPackages.length,
            itemBuilder: (context, i) {
              final p = trendingPackages[i];
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8, offset: const Offset(0, 3))],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image + badges
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Image.network(
                            p['image'],
                            height: 210,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Container(height: 210, color: Colors.grey.shade300),
                          ),
                          // Gradient bottom fade
                          Positioned(
                            bottom: 0, left: 0, right: 0,
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  colors: [Colors.white, Colors.transparent],
                                ),
                              ),
                            ),
                          ),
                          // Badges top left
                          Positioned(
                            top: 10, left: 10,
                            child: Row(
                              children: [
                                if (p['isNewlyLaunched'])
                                  Container(
                                    margin: const EdgeInsets.only(right: 6),
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Text('Newly Launched',
                                        style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w600)),
                                  ),
                                _badge(p['badge1'], Colors.white, Colors.black87),
                                const SizedBox(width: 6),
                                _badge(p['badge2'], const Color(0xFF2d4a6b), Colors.white),
                              ],
                            ),
                          ),// Rating + Heart
                          Positioned(
                            top: 10, right: 10,
                            child: Row(
                              children: [
                                if (p['reviews'] != '0')
                                  _badge('${p['rating']} ⭐ (${p['reviews']})', Colors.white, Colors.black87),
                                const SizedBox(width: 6),
                                Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                  child: const Icon(Icons.favorite_border, size: 18, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Details
                    Padding(
                      padding: const EdgeInsets.fromLTRB(14, 12, 14, 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(p['title'],
                                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: const [
                                    Text('All Inclusive', style: TextStyle(color: Colors.blue, fontSize: 11)),
                                    SizedBox(width: 4),
                                    Icon(Icons.info_outline, color: Colors.blue, size: 14),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),

                          Row(
                            children: [
                              _infoChip(Icons.calendar_today_outlined, p['days']),
                              const SizedBox(width: 8),
                              _infoChip(Icons.location_on_outlined, p['cities']),
                              const SizedBox(width: 8),
                              Expanded(child: _infoChip(Icons.date_range_outlined, p['dept'])),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text('Tour Highlights',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                          const SizedBox(height: 4),
                          RichText(
                            text: TextSpan(
                              style: const TextStyle(color: Colors.grey, fontSize: 12),
                              children: [
                                TextSpan(text: p['highlights']),
                                const TextSpan(
                                  text: '...More',
                                  style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: p['price'],
                                      style: const TextStyle(
                                          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                                    ),
                                    const TextSpan(
                                      text: ' pp on\ntwin sharing',
                                      style: TextStyle(fontSize: 11, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(p['emi'],
                                    style: const TextStyle(fontSize: 11, color: Colors.black54)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                              Expanded(
                                child: OutlinedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.compare_arrows, size: 16, color: Colors.black87),
                                  label: const Text('Compare',
                                      style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600)),
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    side: const BorderSide(color: Colors.black87),
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFFFD700),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    padding: const EdgeInsets.symmetric(vertical: 13),
                                    elevation: 0,
                                  ),
                                  child: const Text('Book now',
                                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _infoChip(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 13, color: Colors.grey),
          const SizedBox(width: 4),
          Text(label, style: const TextStyle(fontSize: 11, color: Colors.black87)),
        ],
      ),
    );
  }
  Widget _buildHappyTravelersSection() {
    return Container(
      color: const Color(0xFFDDEBF7),
      padding: const EdgeInsets.only(top: 22, bottom: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Center(
            child: Text(
              'Hear It from Our Happy Travelers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),


          SizedBox(
            height: 314,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: happyTravelers.length,
              itemBuilder: (context, i) {
                final t = happyTravelers[i];
                return Container(
                  width: 280,
                  margin: const EdgeInsets.only(right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6, offset: const Offset(0, 2))],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Stack(
                          children: [
                            Image.network(
                              t['image'],
                              height: 170,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) => Container(height: 170, color: Colors.grey.shade300),
                            ),

                            Positioned(
                              bottom: 0, left: 0, right: 0,
                              child: Container(
                                height: 70,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                                  ),
                                ),
                              ),
                            ),

                            Positioned(
                              bottom: 10, left: 10,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.9),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  t['tag'],
                                  style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: Colors.black87),
                                ),
                              ),
                            ),
                          ],
                        ),


                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                t['title'],
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black87),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                t['review'],
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontSize: 12, color: Colors.black54, height: 1.4),
                              ),
                              const SizedBox(height: 4),
                              const Text('Read More', style: TextStyle(fontSize: 12, color: Colors.blue, fontWeight: FontWeight.w600)),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${t['name']} • Travelled in  ${t['month']}',
                                    style: const TextStyle(fontSize: 11, color: Colors.black54),
                                  ),
                                  Row(
                                    children: [
                                      Text(t['rating'], style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                                      const SizedBox(width: 3),
                                      const Icon(Icons.star, color: Colors.orange, size: 14),
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
              },
            ),
          ),
        ],
      ),
    );
  }
}