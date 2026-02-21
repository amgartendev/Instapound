import 'package:flutter/material.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 70,
      child: BottomAppBar(
        color: Colors.white,
        padding: EdgeInsets.only(top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Homepage
            Icon(Icons.home_rounded),

            // Reels
            Icon(Icons.video_camera_front),

            // Message
            Stack(
              children: [
                Icon(Icons.send_rounded),
                RedNotificationCircle(top: 16, left: 15),
              ],
            ),

            // Search
            Icon(Icons.search),

            // Profile
            Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    'assets/images/profile/profile1.jpg',
                  ),
                ),

                RedNotificationCircle(top: 15, left: 18),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class RedNotificationCircle extends StatelessWidget {
  const RedNotificationCircle({
    required this.top,
    required this.left,
    super.key,
  });

  final double top;
  final double left;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 1.5),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Container(
          width: 7,
          height: 7,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
