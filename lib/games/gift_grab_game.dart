import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:gift_grab_game_with_flame/components/background_component.dart';
import 'package:gift_grab_game_with_flame/components/gift_component.dart';
import 'package:gift_grab_game_with_flame/components/santa_component.dart';
import 'package:gift_grab_game_with_flame/constants/globals.dart';
import 'package:gift_grab_game_with_flame/inputs/joystick.dart';

class GiftGrabGame extends FlameGame with HasCollisionDetection {
  int score = 0;

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    add(BackgroundComponent());

    add(SantaComponent(joystick: joystick));

    add(GiftComponent());

    add(joystick);


    FlameAudio.audioCache.loadAll([


      Globals.itemGrabSound,
    ]);
  }
}
