import 'package:flutter/material.dart';

class InteractionButton extends StatelessWidget {
  const InteractionButton({required this.icon, required this.text, super.key});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Icon(icon),

        Text(
          text,
          style: const TextStyle(decoration: TextDecoration.underline),
        ),
      ],
    );
  }
}
