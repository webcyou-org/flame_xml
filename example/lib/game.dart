import 'package:flame/components.dart';
import 'package:flame/game.dart';

import 'package:flame_xml/flame_xml.dart';

class MainGame extends FlameGame with HasGameRef {

  @override
  Future<void> onLoad() async {
    super.onLoad();
    const filePath = 'tiles/tile_map.tsx';
    final flameXML = await FlameXML.create(filePath);
    print(flameXML.data['source']);
  }
}