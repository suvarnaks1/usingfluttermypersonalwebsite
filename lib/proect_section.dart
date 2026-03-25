import 'package:flutter/material.dart';

class RecentProjectsSection extends StatelessWidget {
  const RecentProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      decoration: const BoxDecoration(
  color: Colors.black
      ),
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
                    "Connect with celestial guidance. Integrated birth charts and compatibility reports.",
                image: "assets/wheel.png",
              
              ),
              ProjectCard(
                title: "EXPENSE TRACKER APP",
                description:
                    "Real-time tracking and comprehensive budget reports.",
                image: "assets/Financial growth in neon glow.png",
              ),
              ProjectCard(
                title: "JACKFRUIT APP",
                description:
                    "Farm-to-table traceability and unique recipes.",
                image: "assets/Glowing cacao fruits in neon blue.png",
              ),
              ProjectCard(
                title: "ADMIN PANEL",
                description:
                    "Service ticket management and diagnostics tools.",
                image: "assets/Neon tech flow and automation.png",
              ),
              ProjectCard(
                title: "PLANT APP",
                description:
                    "Smart care reminders and plant database.",
                image: "assets/Neon hand cradling growth and love.png",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProjectCard extends StatefulWidget {
  final String title;
  final String description;
  final String image;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
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
        width: MediaQuery.of(context).size.width < 600
            ? double.infinity
            : 250,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFF101522),
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
              spreadRadius: 1,
            )
          ],
        ),
        child: Column(
          children: [
            Image.asset(widget.image, height: 150),
            const SizedBox(height: 15),
               Image.asset(widget.image, height: 150),
              const SizedBox(height: 15),

            Text(
              widget.title,
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
              style: const TextStyle(
                color: Colors.white60,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}