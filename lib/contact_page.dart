import 'package:flutter/material.dart';

// ---------------- CONTACT SECTION ----------------
class ContactSection extends StatelessWidget {
  final bool isMobile;
  const ContactSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      color: const Color(0xFF0E1A2B),
      child: Column(
        children: [
          const Text(
            "CONTACT ME",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 40),

          Center(
            child: Container(
              width: isMobile ? double.infinity : 900,
              child: isMobile
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _leftContent(),
                        const SizedBox(height: 40),
                        _rightContent(),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: _leftContent()),
                        const SizedBox(width: 60),
                        Expanded(child: _rightContent()),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------- LEFT ----------------
  static Widget _leftContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // ✅ FIXED
      children: [
        const Text(
          "GET IN TOUCH",
          style: TextStyle(
            color: Color(0xFF4FC3F7),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          "I'd love to hear from you.",
          style: TextStyle(color: Colors.white70),
        ),

        const SizedBox(height: 25),

        _inputField("YOUR NAME"),
        const SizedBox(height: 15),
        _inputField("YOUR EMAIL"),
        const SizedBox(height: 15),
        _inputField("SUBJECT"),
        const SizedBox(height: 15),
        _inputField("YOUR MESSAGE", maxLines: 4),

        const SizedBox(height: 25),

        Container(
          height: 45,
          width: 200,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF42A5F5), Color(0xFF1E88E5)],
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Text(
              "SEND MESSAGE",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // ---------------- RIGHT ----------------
  static Widget _rightContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // ✅ FIXED
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.5),
                  blurRadius: 20,
                ),
              ],
            ),
            child: const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/pro2.png'),
            ),
          ),
        ),

        const SizedBox(height: 30),

        _contactItem(Icons.email, "EMAIL:", "suvarnaks2002@gmail.com"),
        _contactItem(Icons.phone, "PHONE:", "9747994362"),
        _contactItem(Icons.location_on, "LOCATION:", "India, Kerala"),
        _contactItem(Icons.alternate_email, "SOCIAL:", "Suvarna_ks__"),
      ],
    );
  }

  // ---------------- INPUT ----------------
  static Widget _inputField(String hint, {int maxLines = 1}) {
    return SizedBox(
      width: double.infinity,
      child: TextField(
        maxLines: maxLines,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.white54),
          filled: true,
          fillColor: const Color(0xFF1B263B),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  // ---------------- CONTACT ITEM ----------------
  static Widget _contactItem(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.blueAccent, size: 18),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}