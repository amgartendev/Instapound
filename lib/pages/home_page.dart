import 'package:flutter/material.dart';
import 'package:instapound/components/custom_bottom_navbar.dart';
import 'package:instapound/widgets/homepage/feed.dart';
import 'package:instapound/widgets/homepage/header.dart';
import 'package:instapound/widgets/homepage/stories.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavbar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Header(),
              SizedBox(height: 10),

              // Stories
              Stories(),
              SizedBox(height: 10),

              // Feed
              Feed(),
            ],
          ),
        ),
      ),
    );
  }
}
