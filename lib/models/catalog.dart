class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "Raja001",
      name: "i phone 12 pro",
      desc: "Apple i phone 12th generation",
      price: 999,
      color: "#33505a",
      image:
          "https://cdn.dxomark.com/wp-content/uploads/medias/post-61584/iphone-12-pro-max-graphite-hero.jpg")
];
