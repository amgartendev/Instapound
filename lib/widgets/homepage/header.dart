import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Post icon
          Icon(Icons.add, size: 29),

          // For you
          Row(
            children: [
              Text(
                'For you',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Icon(Icons.keyboard_arrow_down, size: 25),
            ],
          ),

          // Notifications icon
          Icon(Icons.favorite_border, size: 26),
        ],
      ),
    );
  }
}
