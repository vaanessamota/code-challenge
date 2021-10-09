import 'package:pokeshop/shared/models/sprites_model.dart';

class Pokemon {
  Pokemon({
    required this.name,
    required this.sprite,
    required this.weight,
  });
  late final String name;
  late final Sprite sprite;
  late final int weight;

  Pokemon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    sprite = Sprite.fromJson(json['sprites']);
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['sprite'] = sprite.toJson();
    _data['weight'] = weight;
    return _data;
  }
}
