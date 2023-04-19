import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:gift_grab_game_with_flame/games/gift_grab_game.dart';
import 'package:gift_grab_game_with_flame/screens/game_play.dart';
import 'package:gift_grab_game_with_flame/services/hive_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await HiveService.openHiveBox(boxName: 'settings');

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GamePlay(),
    ),
  );
}
