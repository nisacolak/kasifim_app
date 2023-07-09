class CreateMenuRequestModel {
  String? restaurantId;
  List<MenuItems>? menuItems;

  CreateMenuRequestModel({this.restaurantId, this.menuItems});

  CreateMenuRequestModel.fromJson(Map<String, dynamic> json) {
    restaurantId = json['restaurantId'];
    if (json['menuItems'] != null) {
      menuItems = <MenuItems>[];
      json['menuItems'].forEach((v) {
        menuItems!.add(new MenuItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurantId'] = this.restaurantId;
    if (this.menuItems != null) {
      data['menuItems'] = this.menuItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MenuItems {
  String? name;
  String? description;
  int? price;
  String? category;
  String? photo;

  MenuItems(
      {this.name, this.description, this.price, this.category, this.photo});

  MenuItems.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    price = json['price'];
    category = json['category'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['category'] = this.category;
    data['photo'] = this.photo;
    return data;
  }
}
