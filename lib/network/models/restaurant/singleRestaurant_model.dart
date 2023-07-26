class SingleRestaurantModel {
  bool? success;
  Data? data;

  SingleRestaurantModel({this.success, this.data});

  SingleRestaurantModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? name;
  String? description;
  List<Menu>? menu;
  String? phone;
  String? website;
  int? likeCount;
  List<String>? openingHours;
  String? cuisine;
  String? priceRange;
  bool? acceptsReservations;
  List<String>? parkingOptions;
  bool? creditCard;
  List<String>? featuredDishes;
  User? user;
  List<Comments>? comments;
  String? category;
  List<String>? tags;
  String? restaurantImage;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Data(
      {this.sId,
      this.name,
      this.description,
      this.menu,
      this.phone,
      this.website,
      this.likeCount,
      this.openingHours,
      this.cuisine,
      this.priceRange,
      this.acceptsReservations,
      this.parkingOptions,
      this.creditCard,
      this.featuredDishes,
      this.user,
      this.comments,
      this.category,
      this.tags,
      this.restaurantImage,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    description = json['description'];
    if (json['menu'] != null) {
      menu = <Menu>[];
      json['menu'].forEach((v) {
        menu!.add(new Menu.fromJson(v));
      });
    }
    phone = json['phone'];
    website = json['website'];
    likeCount = json['likeCount'];
    openingHours = json['openingHours'].cast<String>();
    cuisine = json['cuisine'];
    priceRange = json['priceRange'];
    acceptsReservations = json['acceptsReservations'];
    parkingOptions = json['parkingOptions'].cast<String>();
    creditCard = json['creditCard'];
    featuredDishes = json['featuredDishes'].cast<String>();
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    if (json['comments'] != null) {
      comments = <Comments>[];
      json['comments'].forEach((v) {
        comments!.add(new Comments.fromJson(v));
      });
    }
    category = json['category'];
    tags = json['tags'].cast<String>();
    restaurantImage = json['restaurant_image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['description'] = this.description;
    if (this.menu != null) {
      data['menu'] = this.menu!.map((v) => v.toJson()).toList();
    }
    data['phone'] = this.phone;
    data['website'] = this.website;
    data['likeCount'] = this.likeCount;
    data['openingHours'] = this.openingHours;
    data['cuisine'] = this.cuisine;
    data['priceRange'] = this.priceRange;
    data['acceptsReservations'] = this.acceptsReservations;
    data['parkingOptions'] = this.parkingOptions;
    data['creditCard'] = this.creditCard;
    data['featuredDishes'] = this.featuredDishes;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    if (this.comments != null) {
      data['comments'] = this.comments!.map((v) => v.toJson()).toList();
    }
    data['category'] = this.category;
    data['tags'] = this.tags;
    data['restaurant_image'] = this.restaurantImage;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
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

class User {
  String? sId;
  String? name;
  String? email;
  String? role;
  String? profileImage;
  bool? blocked;
  List<String>? favorites;
  List<String>? comments;
  String? createdAt;
  int? iV;
  int? followingCount;

  User(
      {this.sId,
      this.name,
      this.email,
      this.role,
      this.profileImage,
      this.blocked,
      this.favorites,
      this.comments,
      this.createdAt,
      this.iV,
      this.followingCount});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    role = json['role'];
    profileImage = json['profile_image'];
    blocked = json['blocked'];
    favorites = json['favorites'].cast<String>();
    comments = json['comments'].cast<String>();
    createdAt = json['createdAt'];
    iV = json['__v'];
    followingCount = json['followingCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['role'] = this.role;
    data['profile_image'] = this.profileImage;
    data['blocked'] = this.blocked;
    data['favorites'] = this.favorites;
    data['comments'] = this.comments;
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;
    data['followingCount'] = this.followingCount;
    return data;
  }
}

class Comments {
  String? sId;
  User? user;
  String? restaurant;
  String? content;
  String? createdAt;
  int? iV;

  Comments(
      {this.sId,
      this.user,
      this.restaurant,
      this.content,
      this.createdAt,
      this.iV});

  Comments.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    restaurant = json['restaurant'];
    content = json['content'];
    createdAt = json['createdAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['restaurant'] = this.restaurant;
    data['content'] = this.content;
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;
    return data;
  }
}

// class User {
//   String? sId;
//   String? name;
//   String? profileImage;

//   User({this.sId, this.name, this.profileImage});

//   User.fromJson(Map<String, dynamic> json) {
//     sId = json['_id'];
//     name = json['name'];
//     profileImage = json['profile_image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['_id'] = this.sId;
//     data['name'] = this.name;
//     data['profile_image'] = this.profileImage;
//     return data;
//   }
// }
