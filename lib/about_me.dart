import 'package:flutter/material.dart';

// ---------------- ABOUT SECTION ----------------
class AboutSection extends StatelessWidget {
  final bool isMobile;
  const AboutSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      color: Colors.black,
      child: Column(
        children: [
          const Text(
            "ABOUT ME",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 40),

          // 🔥 CARD STYLE (same as project cards)
          Center(
            child: Container(
              width: isMobile ? double.infinity : 900,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFF0E111A),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.blue.withOpacity(0.2),
                ),
              ),
              child: isMobile
                  ? Column(
                      children: [
                        _profileImage(),
                        const SizedBox(height: 20),
                        _content(),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _profileImage(),
                        const SizedBox(width: 30),
                        Expanded(child: _content()),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------- IMAGE ----------------
  Widget _profileImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset('assets/pro1.JPG',  width: 220,
        height: 260,
        fit: BoxFit.cover,)
      
  
    );
  }

  // ---------------- CONTENT ----------------
  Widget _content() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        const Text(
          "A passionate Flutter developer focused on building modern, scalable, and user-friendly applications. "
  "I specialize in creating high-performance mobile and web apps with clean architecture and responsive UI design. "
  "With strong experience in freelancing, I have successfully delivered client-based projects across multiple domains. "
  "I work with Flutter for frontend development and use technologies like Django and REST APIs to build powerful backend systems. "
  "I enjoy transforming ideas into real-world applications by combining design, performance, and functionality. "
  "Continuously learning and exploring new technologies, I aim to deliver innovative and efficient digital solutions.",
          style: TextStyle(color: Colors.white60),
        ),

        const SizedBox(height: 20),

        const Text(
          "Key Skills",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),

        const SizedBox(height: 10),

        skillBar("Flutter Development", 0.9),
        skillBar("UI/UX Design", 0.85),
        skillBar("Backend Integration", 0.75),
        skillBar("Problem Solving", 0.8),
      ],
    );
  }

  // ---------------- SKILL BAR ----------------
  static Widget skillBar(String title, double value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 5),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: value,
              minHeight: 8,
              backgroundColor: Colors.white24,
              valueColor: const AlwaysStoppedAnimation<Color>(
                Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}