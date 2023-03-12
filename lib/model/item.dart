class  Item {
  String name;
  int price;
  String image;
  String? discription;


  Item({
    required this.name,
    required this.price,
    required this.image,
    this.discription,
  });

  factory Item.fromJson(Map<String, dynamic> parsedJson) {
    return Item(
      name: parsedJson['title'],
      price: parsedJson['price'],
      image: parsedJson['image'],
      discription: parsedJson['discription']
    );
  }

}
class cart{

}
