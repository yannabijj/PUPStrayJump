import 'package:flame/widgets.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:new_super_jumper/assets.dart';
import 'package:new_super_jumper/ui/widgets/my_text.dart';
import 'package:new_super_jumper/ui/widgets/my_button.dart';

class Character {
  final String name;
  final Sprite sprite;
  final String description;

  Character({
    required this.name,
    required this.sprite,
    required this.description,
  });
}

class CharacterListScreen extends StatefulWidget {
  const CharacterListScreen({super.key});

  @override
  _CharacterListScreenState createState() => _CharacterListScreenState();
}

class _CharacterListScreenState extends State<CharacterListScreen> {
  late List<Character> characters;
  String equippedCharacter = "Betlog"; // Default equipped character

  @override
  void initState() {
    super.initState();
    _loadEquippedCharacter(); // Load the saved character

    characters = [
      Character(
        name: "Loki",
        sprite: Assets.lokiFall,
        description: "U ii a i u ii i a i. U ii a i u ii i a i.",
      ),
      Character(
        name: "Mila",
        sprite: Assets.milaFall,
        description: "Aweeee ah2 oh, ah uh, aweee.!",
      ),
      Character(
        name: "Milo",
        sprite: Assets.miloFall,
        description: "Aweeee ah2 oh, ah uh, aweee.!",
      ),
      Character(
        name: "Toffee",
        sprite: Assets.toffeeFall,
        description: "Aweeee ah2 oh, ah uh, aweee.!",
      ),
      Character(
        name: "Po",
        sprite: Assets.poFall,
        description: "Aweeee ah oh, ah uh, aweee.!",
      ),
    ];
  }

  /// Loads the equipped character from shared preferences
  Future<void> _loadEquippedCharacter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      equippedCharacter = prefs.getString("equipped_character") ?? "Loki";
    });
  }

  /// Saves the selected character and updates UI
  Future<void> _equipCharacter(String characterName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("equipped_character", characterName);
    setState(() {
      equippedCharacter = characterName;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("$characterName equipped!")),
    );
  }

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Back Button
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: SpriteWidget(sprite: Assets.buttonBack),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                ),

                // Title Image (NEWLY ADDED)

                Image.asset(
                  'assets/ui/csHeader.png', // Your title image path
                  width: 250, // Adjust width as needed
                  fit: BoxFit.contain,
                ),

                // Character List

                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    itemCount: characters.length,
                    itemBuilder: (context, index) {
                      final character = characters[index];

                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 248, 211),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color.fromARGB(255, 102, 44, 6),
                            width: 2,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: SpriteWidget(sprite: character.sprite),
                                ),
                                const SizedBox(height: 6),
                                SizedBox(
                                  width: 70, // Button width
                                  child: MyButton(
                                    equippedCharacter == character.name
                                        ? "Equipped"
                                        : "Equip",
                                    onPressed: () =>
                                        _equipCharacter(character.name),
                                    fontSize: 13,
                                    height: 22,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyText(character.name, fontSize: 18),
                                  const SizedBox(height: 2),
                                  MyText(character.description, fontSize: 11),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
