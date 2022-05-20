import 'dart:convert';

import '../generated/assets.dart';

SliderData sliderDataFromJson(String str) => SliderData.fromJson(json.decode(str));
String sliderDataToJson(SliderData data) => json.encode(data.toJson());

class SliderData {
  SliderData({
    this.name,
    this.model,
    this.price,
    this.image,
  });

  SliderData.fromJson(dynamic json) {
    name = json['name'];
    model = json['model'];
    price = json['price'];
    image = json['image'];
  }
  String? name;
  String? model;
  String? price;
  String? image;
  SliderData copyWith({
    String? name,
    String? model,
    String? price,
    String? image,
  }) =>
      SliderData(
        name: name ?? this.name,
        model: model ?? this.model,
        price: price ?? this.price,
        image: image ?? this.image,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['model'] = model;
    map['price'] = price;
    map['image'] = image;
    return map;
  }
}

List<SliderData> sliderData = [
  SliderData(
    name: "Beats Solo3 Wireless",
    model: "Beats by Dre",
    price: "€319.90",
    image: Assets.imagesIcBeatsByDre,
  ),
  SliderData(
    name: "Wireless Noise Cancelling",
    model: "WF-100XM3",
    price: "€220.00",
    image: Assets.imagesIcWf100xm3,
  ),
];
