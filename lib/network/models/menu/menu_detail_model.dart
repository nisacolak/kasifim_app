class MenuDetailModel {
  String? message;
  Menu? menu;

  MenuDetailModel({this.message, this.menu});

  MenuDetailModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    menu = json['menu'] != null ? new Menu.fromJson(json['menu']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.menu != null) {
      data['menu'] = this.menu!.toJson();
    }
    return data;
  }
}

class Menu {
  String? sId;
  String? restaurantId;
  List<MenuCategories>? menuCategories;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Menu(
      {this.sId,
      this.restaurantId,
      this.menuCategories,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Menu.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    restaurantId = json['restaurantId'];
    if (json['menuCategories'] != null) {
      menuCategories = <MenuCategories>[];
      json['menuCategories'].forEach((v) {
        menuCategories!.add(new MenuCategories.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['restaurantId'] = this.restaurantId;
    if (this.menuCategories != null) {
      data['menuCategories'] =
          this.menuCategories!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class MenuCategories {
  String? category;
  List<Items>? items;
  String? sId;

  MenuCategories({this.category, this.items, this.sId});

  MenuCategories.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    data['_id'] = this.sId;
    return data;
  }
}

class Items {
  String? name;
  String? description;
  int? price;
  String? photo;
  String? sId;

  Items({this.name, this.description, this.price, this.photo, this.sId});

  Items.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    price = json['price'];
    photo = json['photo'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['photo'] = this.photo;
    data['_id'] = this.sId;
    return data;
  }
}
