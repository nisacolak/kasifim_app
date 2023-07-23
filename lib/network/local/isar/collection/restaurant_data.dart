import 'package:isar/isar.dart';

part 'restaurant_data.g.dart';

@collection
class RestaurantDatas {
  late Id id;
  String? name;
  String? description;
  String? phone;
  String? sId;
  String? website; 
  int? likeCount; 
  String? cuisine; 
  String? priceRange; 
  String? restaurantImage;

}
