class CreateMenuResponseModel {
  String? message;
  Menu? menu;
  List<FormattedMenuItems>? formattedMenuItems;

  CreateMenuResponseModel({this.message, this.menu, this.formattedMenuItems});

  CreateMenuResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    menu = json['menu'] != null ? new Menu.fromJson(json['menu']) : null;
    if (json['formattedMenuItems'] != null) {
      formattedMenuItems = <FormattedMenuItems>[];
      json['formattedMenuItems'].forEach((v) {
        formattedMenuItems!.add(new FormattedMenuItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.menu != null) {
      data['menu'] = this.menu!.toJson();
    }
    if (this.formattedMenuItems != null) {
      data['formattedMenuItems'] =
          this.formattedMenuItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Menu {
  String? restaurantId;
  List<MenuCategories>? menuCategories;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Menu(
      {this.restaurantId,
      this.menuCategories,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Menu.fromJson(Map<String, dynamic> json) {
    restaurantId = json['restaurantId'];
    if (json['menuCategories'] != null) {
      menuCategories = <MenuCategories>[];
      json['menuCategories'].forEach((v) {
        menuCategories!.add(new MenuCategories.fromJson(v));
      });
    }
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurantId'] = this.restaurantId;
    if (this.menuCategories != null) {
      data['menuCategories'] =
          this.menuCategories!.map((v) => v.toJson()).toList();
    }
    data['_id'] = this.sId;
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

class FormattedMenuItems {
  String? category;
  List<Items>? items;

  FormattedMenuItems({this.category, this.items});

  FormattedMenuItems.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? name;
  String? description;
  int? price;
  String? category;
  String? photo;

  Items({this.name, this.description, this.price, this.category, this.photo});

  Items.fromJson(Map<String, dynamic> json) {
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
