import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  final bool isMobile;
  const HeroSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF081C3A),
            Color(0xFF0B2A5B),
            Color(0xFF0A3D91),
            Color(0xFF000000),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                _HeroText(),
                SizedBox(height: 30),
                _HeroImage(),
              ],
            )
          : Row(
              children: const [
                Expanded(flex: 5, child: _HeroText()),
                Expanded(flex: 5, child: _HeroImage()),
              ],
            ),
    );
  }
}

// ---------------- TEXT SECTION ----------------
class _HeroText extends StatelessWidget {
  const _HeroText();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "BUILDING MODERN APPS & WEBSITES",
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            height: 1.3,
          ),
        ),
        const SizedBox(height: 20),

        const Text(
          "Hi, I'm a Flutter Developer creating beautiful and scalable applications.",
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 10),

        const Text(
          "I specialize in mobile & web app development using Flutter, Firebase, and modern UI/UX design.",
          style: TextStyle(
            color: Colors.white60,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 30),

        Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF085ECD),
                padding: const EdgeInsets.symmetric(
                    horizontal: 25, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "View My Work",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 15),

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white54),
                padding: const EdgeInsets.symmetric(
                    horizontal: 25, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Contact Me",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        )
      ],
    );
  }
}

// ---------------- IMAGE SECTION ----------------
class _HeroImage extends StatelessWidget {
  const _HeroImage();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/pro2.png', 
      fit: BoxFit.contain,
    );
  }
}