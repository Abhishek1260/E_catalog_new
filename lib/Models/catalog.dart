class CatalogModel {
  static List? product;
}

class Products {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Products(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      id: map['id'],
      name: map['name'],
      desc: map['desc'],
      price: map['price'],
      color: map['color'],
      image: map['image'],
    );
  }
}
