class MenuModel {
  String? message;
  List<Menus>? menus;

  MenuModel({this.message, this.menus});

  MenuModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['menus'] != null) {
      menus = <Menus>[];
      json['menus'].forEach((v) {
        menus!.add(new Menus.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.menus != null) {
      data['menus'] = this.menus!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Menus {
  String? sId;
  String? restaurantId;
  String? name;
  String? description;
  double? price;
  String? category;
  String? photo;
  String? createdAt;
  String? updatedAt;
  int? iV;
  List<MenuCategories>? menuCategories;
  List<MenuItems>? menuItems;

  Menus(
      {this.sId,
      this.restaurantId,
      this.name,
      this.description,
      this.price,
      this.category,
      this.photo,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.menuCategories,
      this.menuItems});

  Menus.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    restaurantId = json['restaurantId'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    category = json['category'];
    photo = json['photo'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    if (json['menuCategories'] != null) {
      menuCategories = <MenuCategories>[];
      json['menuCategories'].forEach((v) {
        menuCategories!.add(new MenuCategories.fromJson(v));
      });
    }
    if (json['menuItems'] != null) {
      menuItems = <MenuItems>[];
      json['menuItems'].forEach((v) {
        menuItems!.add(new MenuItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['restaurantId'] = this.restaurantId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['category'] = this.category;
    data['photo'] = this.photo;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    if (this.menuCategories != null) {
      data['menuCategories'] =
          this.menuCategories!.map((v) => v.toJson()).toList();
    }
    if (this.menuItems != null) {
      data['menuItems'] = this.menuItems!.map((v) => v.toJson()).toList();
    }
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

class MenuItems {
  String? name;
  String? description;
  int? price;
  String? category;
  String? photo;
  String? sId;

  MenuItems(
      {this.name,
      this.description,
      this.price,
      this.category,
      this.photo,
      this.sId});

  MenuItems.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    price = json['price'];
    category = json['category'];
    photo = json['photo'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['price'] = this.price;
    data['category'] = this.category;
    data['photo'] = this.photo;
    data['_id'] = this.sId;
    return data;
  }
}
