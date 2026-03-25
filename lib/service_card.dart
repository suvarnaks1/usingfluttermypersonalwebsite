import 'package:flutter/material.dart';

class CoreServicesSection extends StatelessWidget {
 final bool isMobile;
  const CoreServicesSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Core Services",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),

          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: const [
              ServiceCard(
                icon: Icons.settings,
                title: "IT STRATEGY",
                description:
                    "I help businesses leverage cutting-edge technology to achieve efficiency, security, and scalability.",
              ),
              ServiceCard(
                icon: Icons.cloud,
                title: "CLOUD SOLUTIONS",
                description:
                    "I help businesses leverage cutting-edge technology to achieve efficiency, security, and scalability.",
              ),
              ServiceCard(
                icon: Icons.security,
                title: "CYBERSECURITY",
                description:
                    "I help businesses leverage cutting-edge technology to achieve efficiency, security, and scalability.",
              ),
              ServiceCard(
                icon: Icons.bar_chart,
                title: "DATA ANALYTICS",
                description:
                    "I help businesses leverage cutting-edge technology to achieve efficiency, security, and scalability.",
              ),
            ],
          )
        ],
      ),
    );
  }
}

// ---------------- SERVICE CARD ----------------
class ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF0F172A), // dark card
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blue.withOpacity(0.3)),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: const Color(0xFF3B82F6), size: 40),
          const SizedBox(height: 15),

          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),

          Text(
            description,
            style: const TextStyle(
              color: Colors.white60,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}