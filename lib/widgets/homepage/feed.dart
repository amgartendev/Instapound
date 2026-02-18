import 'package:flutter/material.dart';
import 'package:instapound/widgets/homepage/posts.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [Posts()]);
  }
}
