import 'package:flame/game.dart';
import 'package:gift_grab_game_with_flame/components/background_component.dart';
import 'package:gift_grab_game_with_flame/components/santa_component.dart';

class GiftGrabGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    add(BackgroundComponent());
    add(SantaComponent());
  }
}
