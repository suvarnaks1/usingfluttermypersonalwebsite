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
        "Helping startups and businesses define the right technology roadmap with scalable architecture, performance optimization, and secure system design.",
  ),
  ServiceCard(
    icon: Icons.business_center,
    title: "BUSINESS SOLUTIONS",
    description:
        "Providing customized digital solutions to streamline operations, improve productivity, and deliver seamless user experiences across platforms.",
  ),
  ServiceCard(
    icon: Icons.phone_android,
    title: "APP DEVELOPMENT",
    description:
        "Building high-performance cross-platform mobile applications using Flutter with modern UI/UX, real-time features, and smooth user interactions.",
  ),
  ServiceCard(
    icon: Icons.web,
    title: "WEB DEVELOPMENT",
    description:
        "Creating responsive and visually appealing web applications with fast performance, clean UI, and scalable backend integrations.",
  ),
  ServiceCard(
    icon: Icons.code,
    title: "BACKEND & APIs",
    description:
        "Developing secure and scalable backend systems using Django, REST APIs, and database management for robust application performance.",
  ),
  ServiceCard(
    icon: Icons.work_outline,
    title: "FREELANCING",
    description:
        "Offering freelance services for app and web development, UI design, bug fixing, and complete project delivery with client satisfaction.",
  ),
],
      )],
          )
      
      
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