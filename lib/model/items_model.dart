import 'dart:convert';

class items {
  String title;
  String imagepath;
  int price;
  int? discountprice;
  items(
      {required this.title,
      required this.imagepath,
      required this.price,
      required this.discountprice});
}

List<items> itemlist = [
  items(
      title: 'Banyan Sunlite Refined (1L)',
      imagepath: 'assets/itemsmodel/images (1).png',
      price: 186,
      discountprice: 240),
  items(
      title: 'Emami Soyabean oil (1L)',
      imagepath: 'assets/itemsmodel/images (2).png',
      price: 186,
      discountprice: 240),
  items(
      title: 'Amazing Oats 1kg ',
      imagepath: 'assets/itemsmodel/images (3).png',
      price: 76,
      discountprice: 140),
  items(
      title: 'Premium Rice 1kg ',
      imagepath: 'assets/itemsmodel/images (5).png',
      price: 106,
      discountprice: 190),
  items(
      title: 'Master Rice1Kg',
      imagepath: 'assets/itemsmodel/images (6).png',
      price: 166,
      discountprice: 340),
  items(
      title: 'Dano Full Cream Milk Powder 1kg',
      imagepath: 'assets/itemsmodel/images (8).png',
      price: 186,
      discountprice: 240),
  items(
      title: 'Cheese Puffs Chips',
      imagepath: 'assets/itemsmodel/images (8).png',
      price: 15,
      discountprice: 20),
  items(
      title: 'Breakfast Oats 1',
      imagepath: 'assets/itemsmodel/images (4).png',
      price: 166,
      discountprice: 340),
];










































Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  String status;
  bool success;
  Data data;

  Welcome({
    required this.status,
    required this.success,
    required this.data,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        status: json["status"],
        success: json["success"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "data": data.toJson(),
      };
}

class Data {
  List<Doc> docs;
  int page;
  int pages;
  int docCount;

  Data({
    required this.docs,
    required this.page,
    required this.pages,
    required this.docCount,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        docs: List<Doc>.from(json["docs"].map((x) => Doc.fromJson(x))),
        page: json["page"],
        pages: json["pages"],
        docCount: json["docCount"],
      );

  Map<String, dynamic> toJson() => {
        "docs": List<dynamic>.from(docs.map((x) => x.toJson())),
        "page": page,
        "pages": pages,
        "docCount": docCount,
      };
}

class Doc {
  String id;
  String name;
  List<String> keywords;
  int stock;
  String unit;
  Category mainCategory;
  Category subCategory;
  List<String> images;
  int v;
  int price;
  bool isActive;
  String description;

  Doc({
    required this.id,
    required this.name,
    required this.keywords,
    required this.stock,
    required this.unit,
    required this.mainCategory,
    required this.subCategory,
    required this.images,
    required this.v,
    required this.price,
    required this.isActive,
    required this.description,
  });

  factory Doc.fromJson(Map<String, dynamic> json) => Doc(
        id: json["_id"],
        name: json["name"],
        keywords: List<String>.from(json["keywords"].map((x) => x)),
        stock: json["stock"],
        unit: json["unit"],
        mainCategory: Category.fromJson(json["mainCategory"]),
        subCategory: Category.fromJson(json["subCategory"]),
        images: List<String>.from(json["images"].map((x) => x)),
        v: json["__v"],
        price: json["price"],
        isActive: json["isActive"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "keywords": List<dynamic>.from(keywords.map((x) => x)),
        "stock": stock,
        "unit": unit,
        "mainCategory": mainCategory.toJson(),
        "subCategory": subCategory.toJson(),
        "images": List<dynamic>.from(images.map((x) => x)),
        "__v": v,
        "price": price,
        "isActive": isActive,
        "description": description,
      };
}

class Category {
  String id;
  String name;
  String image;
  bool isActive;
  MainCategory? mainCategory;

  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.isActive,
    this.mainCategory,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["_id"],
        name: json["name"],
        image: json["image"],
        isActive: json["isActive"],
        mainCategory: json["mainCategory"] == null
            ? null
            : MainCategory.fromJson(json["mainCategory"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "image": image,
        "isActive": isActive,
        "mainCategory": mainCategory?.toJson(),
      };
}

class MainCategory {
  String id;
  String name;

  MainCategory({
    required this.id,
    required this.name,
  });

  factory MainCategory.fromJson(Map<String, dynamic> json) => MainCategory(
        id: json["_id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
      };
}
