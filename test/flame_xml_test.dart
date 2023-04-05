import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flame_xml/flame_xml.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();

  test('layer Length check', () async {
    const filePath = 'tiles/tile_map.tsx';
    final flameXML = await FlameXML.create(filePath);
    expect(flameXML.data['source'], filePath);
  });
}
