import 'package:flame/components.dart';
import 'package:gift_grab_game_with_flame/constants/globals.dart';
import 'package:gift_grab_game_with_flame/games/gift_grab_game.dart';

class SantaComponent extends SpriteComponent with HasGameRef<GiftGrabGame> {

  final double _spriteHeight = 100;

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    sprite = await gameRef.loadSprite(Globals.santaIdleSprite);
    position = gameRef.size / 2;
    height = _spriteHeight;
    width = _spriteHeight * 1.42;
    anchor = Anchor.center;
  }
}
