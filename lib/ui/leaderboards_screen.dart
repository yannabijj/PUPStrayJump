import 'package:flame/widgets.dart';
import 'package:flutter/material.dart';
import 'package:new_super_jumper/assets.dart';
import 'package:new_super_jumper/high_scores.dart';
import 'package:new_super_jumper/ui/widgets/my_text.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: AspectRatio(
          aspectRatio: 9 / 19.5,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ui/background2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: LayoutBuilder(builder: (context, constraints) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Back Button
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(0.2),
                        child: IconButton(
                          icon: SpriteWidget(sprite: Assets.buttonBack),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),
                    ),

                    // Title Image (Moved Up)
                    SizedBox(height: constraints.maxHeight * 0.001),
                    Image.asset(
                      'assets/ui/hsTitle2.png',
                      width: constraints.maxWidth * 0.9,
                      fit: BoxFit.contain,
                    ),

                    // Leaderboard (Smaller Size)
                    SizedBox(height: constraints.maxHeight * 0.02),
                    Container(
                      width: constraints.maxWidth * 0.65, // Reduced width
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20), // Reduced padding
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 129, 57, 9),
                          width: 3, // Thinner border
                        ),
                        borderRadius: BorderRadius.circular(
                            8), // Slightly smaller rounding
                        color: const Color.fromARGB(255, 255, 248, 211),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const MyText('Best Scores',
                              fontSize: 20), // Smaller Title
                          const SizedBox(height: 6),
                          MyText('${HighScores.highScores[0]}', fontSize: 18),
                          MyText('${HighScores.highScores[1]}', fontSize: 18),
                          MyText('${HighScores.highScores[2]}', fontSize: 18),
                          MyText('${HighScores.highScores[3]}', fontSize: 18),
                          MyText('${HighScores.highScores[4]}', fontSize: 18),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}
