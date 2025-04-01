import 'package:flutter/material.dart';
import 'package:new_super_jumper/high_scores.dart';
import 'package:new_super_jumper/navigation/routes.dart';
import 'package:new_super_jumper/ui/widgets/my_button.dart';
import 'package:new_super_jumper/ui/widgets/my_text.dart';
import 'package:new_super_jumper/audio_manager.dart'; // Import AudioManager

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fullscreen Background (without cropping)
          Positioned.fill(
            child: Image.asset(
              'assets/ui/background.png',
              fit: BoxFit.fitHeight, // Ensures the full image is shown
              alignment: Alignment.center,
            ),
          ),

          // UI Content
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // Title Image with Responsive Sizing
                      Image.asset(
                        'assets/ui/hsTitle.png',
                        width: constraints.maxWidth * 0.9,
                        height: constraints.maxHeight * 0.45,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 10),

                      MyText(
                        'Best Score: ${HighScores.highScores[0]}',
                        fontSize: 22,
                      ),
                      const SizedBox(height: 20),

                      // Play Button with Background Music
                      MyButton(
                        'Play',
                        onPressed: () {
                          AudioManager().startBgm('bg.mp3'); // Start BGM
                          context.pushAndRemoveUntil(Routes.game);
                        },
                      ),
                      const SizedBox(height: 20),

                      MyButton(
                        'Characters',
                        onPressed: () => context.push(Routes.characters),
                      ),
                      const SizedBox(height: 20),

                      MyButton(
                        'Leaderboard',
                        onPressed: () => context.push(Routes.leaderboard),
                      ),
                      const SizedBox(height: 50),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
