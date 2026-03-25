import 'package:flutter/material.dart';

// ---------------- SECTION ----------------
class RecentProjectsSection extends StatelessWidget {
  final bool isMobile;
  const RecentProjectsSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      color: Colors.black,
      child: Column(
        children: [
          const Text(
            "RECENT PROJECTS",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
          const SizedBox(height: 40),

          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: const [
              ProjectCard(
                title: "ASTROLOGER APP",
                description:
                    "A modern astrology platform that connects users with experienced astrologers, offering real-time consultations, detailed birth chart analysis, and accurate horoscope predictions to guide life decisions.",
                topImage: "assets/wheel.png",
                bottomImage:
                    "assets/Smartphones_with_celestial_wallpapers-removebg-preview.png",
              ),
              ProjectCard(
                title: "EXPENSE TRACKER",
                description:
                    "A modern financial management app that empowers users to track expenses, set budgets, and visualize spending patterns through advanced analytics and user-friendly design.",
                topImage: "assets/Financial growth in neon glow.png",
                bottomImage:
                    "assets/Financial_tracking_on_modern_smartphones-removebg-preview.png",
              ),
              ProjectCard(
                title: "JACKFRUIT APP",
                description:
                    "A unique agriculture-based application that connects users with jackfruit farming insights, recipes, and farm-to-table traceability, promoting sustainable and healthy living",
                topImage: "assets/Glowing cacao fruits in neon blue.png",
                bottomImage: "assets/app3.png",
              ),
              ProjectCard(
                title: "ADMIN PANEL",
                description:
                    "A scalable and secure admin dashboard designed for complete system control, featuring real-time analytics, role-based access, and efficient data management tools.",
                topImage: "assets/Neon tech flow and automation.png",
                bottomImage: "assets/app4.png",
              ),
              ProjectCard(
                title: "PLANT APP",
                description:
                    "A smart plant care application that helps users monitor plant health, set watering reminders, and explore a rich database of plant information for better growth and maintenance.",
                topImage: "assets/Neon hand cradling growth and love.png",
                bottomImage: "assets/app5.png",
              ),
            ],
          ),
          SizedBox(height: 20,),
         Container(
  width: double.infinity,
  height: 1,
  decoration: BoxDecoration(
    color: Colors.blueAccent,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.blueAccent.withOpacity(0.6),
        blurRadius: 8,
      ),
    ],
  ),
)
        ],
      ),
    );
  }
}

// ---------------- CARD ----------------
class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String topImage;
  final String bottomImage;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.topImage,
    required this.bottomImage,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: MediaQuery.of(context).size.width < 600 ? double.infinity : 260,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xFF0E111A),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isHover
                ? const Color(0xFF3B82F6)
                : Colors.blue.withOpacity(0.2),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: isHover
                  ? Colors.blue.withOpacity(0.4)
                  : Colors.blue.withOpacity(0.1),
              blurRadius: 15,
            ),
          ],
        ),
        child: Column(
          children: [
            // 🔹 TOP ICON IMAGE
            Image.asset(
              widget.topImage,
              height: 100,
              fit: BoxFit.fill,
              width: double.infinity,
            ),

            const SizedBox(height: 10),

            // 🔹 BOTTOM APP IMAGE
            Image.asset(
              widget.bottomImage,
              height: 200,
              // width: double.infinity,
              fit: BoxFit.fill,
            ),

            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              widget.description,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white60, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
