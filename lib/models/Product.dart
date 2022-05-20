import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));
String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product(
      {this.name,
      this.price,
      this.rate,
      this.reviews,
      this.description,
      this.image,
      this.percent,
      this.discount});

  Product.fromJson(dynamic json) {
    name = json['name'];
    price = json['price'];
    rate = json['rate'];
    reviews = json['reviews'];
    description = json['description'];
    image = json['image'];
    percent = json['percent'];
    discount = json['discount'];
  }
  String? name;
  String? price;
  double? rate;
  String? reviews;
  String? description;
  String? image;
  String? percent;
  String? discount;
  Product copyWith(
          {String? name,
          String? price,
          double? rate,
          String? reviews,
          String? description,
          String? image,
          String? percent,
          String? discount}) =>
      Product(
        name: name ?? this.name,
        price: price ?? this.price,
        rate: rate ?? this.rate,
        reviews: reviews ?? this.reviews,
        description: description ?? this.description,
        image: image ?? this.image,
        percent: percent ?? this.percent,
        discount: discount ?? this.discount,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['price'] = price;
    map['rate'] = rate;
    map['reviews'] = reviews;
    map['description'] = description;
    map['image'] = image;
    map['percent'] = percent;
    map['discount'] = discount;
    return map;
  }
}

/// name : "Altec Lansing Epsilonia Bluetooth Speaker"
/// price : "$210.00"
/// rate : 3.8
/// reviews : "137"
/// description : "Connection Type : Wireless\nBluetooth Connection : Yes\nWater Resistance: No\nNFC (Near Field Communication): Yes"
/// image : "assets/images/ic_speeker.png"

List<Product> products = [
  Product(
    name: "Altec Lansing Epsilonia Bluetooth Speaker",
    price: "\$210.00",
    rate: 3.8,
    reviews: '137',
    description:
        "Connection Type : Wireless\nBluetooth Connection : Yes\nWater Resistance: No\nNFC (Near Field Communication): Yes",
    image: "assets/images/ic_speakers.png",
  ),
  Product(
    name: "Altec Lansing Epsilonia Bluetooth Speaker",
    price: "\$460.00",
    rate: 4.5,
    reviews: '186',
    description:
        "Connection Type : Wireless\nBluetooth Connection : Yes\nWater Resistance: No\nNFC (Near Field Communication): Yes",
    image: "assets/images/ic_headphone.png",
    percent: "%24",
    discount: '\$399.90',
  ),
  Product(
    name: "Space Gray Aluminum Case with Sport Band",
    price: "\$399.90",
    rate: 2.3,
    reviews: '137',
    description:
        "Connection Type : Wireless\nBluetooth Connection : Yes\nWater Resistance: No\nNFC (Near Field Communication): Yes",
    image: "assets/images/ic_watch.png",
  ),
  Product(
    name: "Harman Kardon Allure Bluetooth Speaker",
    price: "\$893.50",
    rate: 4.5,
    reviews: '298',
    description:
        "Connection Type : Wireless\nBluetooth Connection : Yes\nWater Resistance: No\nNFC (Near Field Communication): Yes",
    image: "assets/images/ic_headphones.png",
  ),
  Product(
    name: "Apple Watch Nike Seri 5 44mm GPS Space Grey",
    price: "\$460.00",
    rate: 4.8,
    reviews: '698',
    description:
        "Connection Type : Wireless\nBluetooth Connection : Yes\nWater Resistance: No\nNFC (Near Field Communication): Yes",
    image: "assets/images/ic_watch2.png",
  ),
];
