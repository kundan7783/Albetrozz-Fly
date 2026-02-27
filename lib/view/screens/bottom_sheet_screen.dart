import 'package:albetrozz_fly/view/screens/enquire_screen.dart';
import 'package:albetrozz_fly/view/screens/india_tour_screen.dart';
import 'package:albetrozz_fly/view/screens/more_screen.dart';
import 'package:albetrozz_fly/view/screens/world_tour_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';


class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  int _selectedIndex = 0;

  // 👇 Screens list
  final List<Widget> _screens = const [
    HomeScreen(),
    IndiaTourScreen(),
    WorldTourScreen(),
    EnquireScreen(),
    MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: _screens[_selectedIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildItem(Icons.home_outlined, "Home", 0),
              _buildItem(Icons.map_outlined, "India", 1),
              _buildItem(Icons.public_outlined, "World", 2),
              _buildItem(Icons.call_outlined, "Enquire", 3),
              _buildItem(Icons.grid_view_rounded, "More", 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItem(IconData icon, String label, int index) {
    bool isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF2F4FA2) : Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: AnimatedScale(
                duration: const Duration(milliseconds: 250),
                scale: isSelected ? 0.9 : 1.0,
                child: Icon(
                  icon,
                  size: 26,
                  color: isSelected ? Colors.white : Colors.black54,
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 250),
            style: TextStyle(
              fontSize: 14,
              fontWeight:
              isSelected ? FontWeight.bold : FontWeight.normal,
              color: Colors.black87,
            ),
            child: Text(label),
          ),
        ],
      ),
    );
  }
}