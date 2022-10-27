import 'package:flutter/material.dart';

import 'icon_container.dart';
import 'large_text.dart';
import 'small_text.dart';

class Tile extends StatelessWidget {
  const Tile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        leading: IconContainer(icon: Icons.emoji_emotions),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LargeText(text: 'Speaking Skills', textSize: 17.5),
            const SizedBox(height: 5.0),
            SmallText(text: '16 Exercises'),
          ],
        ),
        trailing: const Icon(Icons.more_horiz),
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFf2f8ff),
        borderRadius: BorderRadius.circular(25.0),
      ),
    );
  }
}
