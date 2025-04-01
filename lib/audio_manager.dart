import 'package:flame_audio/flame_audio.dart';

class AudioManager {
  static final AudioManager _instance = AudioManager._internal();
  factory AudioManager() => _instance;
  AudioManager._internal();

  bool isBgmPlaying = false;

  /// Initialize audio system
  Future<void> init(List<String> files) async {
    await FlameAudio.audioCache.loadAll(files);
    FlameAudio.bgm.initialize();
  }

  /// Start background music (only if not already playing)
  void startBgm(String fileName) {
    if (!isBgmPlaying) {
      FlameAudio.bgm.play(fileName, volume: 5);
      isBgmPlaying = true;
    }
  }

  /// Pause background music
  void pauseBgm() {
    FlameAudio.bgm.pause();
  }

  /// Resume background music
  void resumeBgm() {
    FlameAudio.bgm.resume();
  }

  /// Stop background music completely
  void stopBgm() {
    FlameAudio.bgm.stop();
    isBgmPlaying = false;
  }

  /// Play sound effects
  void playSfx(String fileName) {
    FlameAudio.play(fileName);
  }
}
