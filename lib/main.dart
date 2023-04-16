import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:gift_grab_game_with_flame/games/gift_grab_game.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GameWidget(game: GiftGrabGame()));
}
