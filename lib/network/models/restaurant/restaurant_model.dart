class RestaurantResponseModel {
  bool? success;
  List<Restaurants>? restaurants;
  int? count;

  RestaurantResponseModel({this.success, this.restaurants, this.count});

  RestaurantResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['restaurants'] != null) {
      restaurants = <Restaurants>[];
      json['restaurants'].forEach((v) {
        restaurants!.add(new Restaurants.fromJson(v));
      });
    }
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.restaurants != null) {
      data['restaurants'] = this.restaurants!.map((v) => v.toJson()).toList();
    }
    data['count'] = this.count;
    return data;
  }
}

class Restaurants {
  String? sId;
  String? name;
  String? description;
  List<String>? menu;
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
  String? user;
  List<String>? comments;
  String? category;
  List<String>? tags;
  String? restaurantImage;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Restaurants(
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

  Restaurants.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    description = json['description'];
    menu = json['menu'].cast<String>();
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
    user = json['user'];
    comments = json['comments'].cast<String>();
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
    data['menu'] = this.menu;
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
    data['user'] = this.user;
    data['comments'] = this.comments;
    data['category'] = this.category;
    data['tags'] = this.tags;
    data['restaurant_image'] = this.restaurantImage;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
