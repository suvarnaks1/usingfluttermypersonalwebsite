import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  final bool isMobile;
  const Navbar({super.key, this.isMobile = false});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedIndex = 0;

  final List<String> menuItems = [
    "HOME",
    "SERVICES",
    "PROJECTS",
    "ABOUT",
    "CONTACT"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/s.png', height: 40),

          if (!widget.isMobile)
            Row(
              children: [
                ...List.generate(menuItems.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: _navItem(menuItems[index], index),
                  );
                }),

                const SizedBox(width: 10),

                Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xFF085ECD),
                  ),
                  child: const Center(
                    child: Text(
                      'GET IN TOUCH',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          else
            const Icon(Icons.menu, color: Colors.white),
        ],
      ),
    );
  }

  Widget _navItem(String title, int index) {
    bool isSelected = selectedIndex == index;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? const Color(0xFF085ECD) : Colors.white,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}