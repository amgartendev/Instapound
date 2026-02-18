import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < 10; i++)
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(3.5),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.yellow,
                          Colors.orange,
                          Colors.red,
                          Colors.pink,
                          Colors.purple,
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(3.5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const CircleAvatar(
                        radius: 37,
                        backgroundImage: NetworkImage(
                          'https://i1.sndcdn.com/avatars-000339084123-nag0p1-t1080x1080.jpg',
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    'user',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
