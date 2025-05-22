


class DataModel{
  final String title;
  final String price;
  final String oldPrice;
  final String image;
   int quantity;

  DataModel({
    required this.title,
    required this.price,
    required this.oldPrice,
    required this.image,
     this.quantity=1,

  });

  factory DataModel.fromJson(Map<String , dynamic>json){

    return DataModel(
      title: json["title"], 
      price: json["price"], 
      oldPrice: json["oldPrice"], 
      image: json["image"],
      quantity: json["quantity"]??1
      );
  }
}