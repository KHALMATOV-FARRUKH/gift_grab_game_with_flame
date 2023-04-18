import 'package:flame/game.dart';
import 'package:gift_grab_game_with_flame/components/background_component.dart';
import 'package:gift_grab_game_with_flame/components/santa_component.dart';
import 'package:gift_grab_game_with_flame/inputs/joystick.dart';

class GiftGrabGame extends FlameGame with HasDraggables {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    add(BackgroundComponent());

    add(SantaComponent(joystick: joystick));

    add(joystick);
  }
}
