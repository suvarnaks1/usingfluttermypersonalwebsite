import 'package:flutter/material.dart';
import 'package:webprofile/hero_section.dart';
import 'package:webprofile/nav_bar.dart';
import 'package:webprofile/proect_section.dart';
import 'package:webprofile/service_card.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Website',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return const MobileView();
          } else if (constraints.maxWidth < 1024) {
            return const TabletView();
          } else {
            return const DesktopView();
          }
        },
      ),
    );
  }
}

// ---------------- MOBILE VIEW ----------------
class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          Navbar(isMobile: true),
          HeroSection(isMobile: true),
           CoreServicesSection()
        ],
      ),
    );
  }
}

// ---------------- TABLET VIEW ----------------
class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          Navbar(),
          HeroSection(),
           CoreServicesSection()
        ],
      ),
    );
  }
}

// ---------------- DESKTOP VIEW ----------------
class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Navbar(),
          const HeroSection(),
          CoreServicesSection(),
          RecentProjectsSection()
        ],
      ),
    );
  }
}




