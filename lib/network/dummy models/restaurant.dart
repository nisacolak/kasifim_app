import 'package:kasifim_app/gen/assets.gen.dart';

enum CusineCategory {
  casual,
  dessert,
  breakfast,
  turkish,
  drinks,
  coffee,
}

class Restaurant {
  final int id;
  final String restaurantName;
  final String categoryName;
  final String categoryPath;
  final String thumbnailPath;
  final double rate;
  final String priceRange;
  final String address;
  final String phone;
  final String distance;
  final bool? isFavorite;
  //final List<CusineCategory> categories;

  Restaurant({
    required this.id,
    required this.restaurantName,
    required this.categoryName,
    required this.categoryPath,
    required this.thumbnailPath,
    required this.rate,
    required this.distance,
    required this.priceRange,
    required this.address,
    required this.phone,
    this.isFavorite,
    //required this.categories,
  });
}

List<Restaurant> sampleModel = [
  Restaurant(
    id: 1,
    restaurantName: "Tarihi Çınaraltı",
    categoryName: "Breakfast",
    distance: "3.2 km",
    categoryPath: Assets.images.categoryBreakfast.path,
    thumbnailPath: Assets.images.breakfast2.path,
    rate: 3,
    priceRange: "50-100",
    address: "Bereketzade, Büyük Hendek Cd. No:19/A, 34421 Beyoğlu/İstanbul",
    phone: "0552 416 18 00",
  ),
  Restaurant(
    id: 2,
    restaurantName: "Nalia",
    categoryName: "Turkish",
    categoryPath: Assets.images.categoryTurkish.path,
    thumbnailPath: Assets.images.turkish.path,
    rate: 5,
    distance: "3.2 km",
    priceRange: "50-100",
    address: "",
    phone: "",
  ),
  Restaurant(
    id: 3,
    restaurantName: "La vie Praline",
    categoryName: "FastFood",
    categoryPath: Assets.images.categoryFastFood.path,
    thumbnailPath: Assets.images.fastFood.path,
    rate: 4.5,
    distance: "3.0 km",
    priceRange: "50-100",
    address: "",
    phone: "",
  ),
  Restaurant(
    id: 4,
    restaurantName: "Viyana Kahvesi",
    categoryName: "Dessert",
    categoryPath: Assets.images.categoryDessert.path,
    thumbnailPath: Assets.images.dessert.path,
    rate: 3.5,
    distance: "3.5 km",
    priceRange: "50-100",
    address: "",
    phone: "",
  ),
];
