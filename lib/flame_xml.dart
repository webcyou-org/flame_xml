library flame_xml;

import 'package:flame/flame.dart';
import 'package:path/path.dart';
import 'package:tiled/tiled.dart';
import 'package:xml/xml.dart';

class FlameXML {
  String _source = '';
  String _xml = '';

  FlameXML._();

  String get filename => basename(_source);

  static Future<FlameXML> create(String source) async {
    var flameXML = FlameXML._();
    flameXML._source = source;
    return flameXML._init();
  }

  Future<FlameXML> _init() async {
    _xml = await Flame.assets.readFile(_source);
    return this;
  }

  Parser parse() {
    final node = XmlDocument.parse(_xml).rootElement;
    return XmlParser(node);
  }

  Map<String, dynamic> get data => {'source': _source, 'xml': _xml};
}
