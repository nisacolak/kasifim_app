import 'package:isar/isar.dart';

part 'restaurant_data.g.dart';

@collection
class RestaurantDatas {
  late Id id;
  String? name;
  String? description;
  String? location;
  String? phone;
  String? sId;
}
