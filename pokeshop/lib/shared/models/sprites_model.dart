class Sprite {
  Sprite({required this.image}) {}
  late final image;

  Sprite.fromJson(Map<String, dynamic> json) {
    image = json['other']['official-artwork']['front_default'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['image'] = image.toJson();
    return _data;
  }
}
