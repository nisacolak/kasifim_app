import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import 'package:kasifim_app/network/local/isar/collection/restaurant_data.dart';
import 'package:kasifim_app/network/local/isar/isar_client.dart';
import 'package:kasifim_app/network/rest_api/rest_client.dart';
import 'package:logger/logger.dart';

class RestaurantRepository {
  RestaurantRepository._();

  static RestaurantRepository _instance = RestaurantRepository._();

  static RestaurantRepository get instance => _instance;

  Future<int> getRestaurantService() async {
    final dio = Dio();
    final client = RestClient(dio);
    final IsarLocalDatabase _isarLocalDatabase = IsarLocalDatabase.instance;
    final Logger logger = Logger();
    // call the isar

    final isar = await Isar.getInstance()!;

    final token = await _isarLocalDatabase.getAccessToken();
    try {
      final response = await client.getRestaurant(token);
      print(response);
      int i = 1;
      response.restaurants!.forEach((element) async {
        final restaurant = new RestaurantDatas()
          ..id = i++
          ..description = element.description
          ..name = element.name
          ..sId = element.sId
          ..phone = element.phone 
          ..likeCount = element.likeCount
          ..website = element.website
          ..cuisine = element.cuisine
          ..priceRange = element.priceRange
          ..restaurantImage = element.restaurantImage;
          
        await isar!.writeTxn(() async {
          await isar.restaurantDatas.put(restaurant); // insert & update
        });
      });

      return 200;
    } on DioError catch (e) {
      if (e.response != null && e.response?.statusCode == 400) {
        print('400 Error occurred: ${e.response?.data}');
        print('Error occurred: $e');

        return 400;
      }
      if (e.response != null && e.response?.statusCode == 401) {
        print('401 Error occurred: ${e.response?.data}');
        print('Error occurred: $e');

        return 401;
      } else {
        return 502;
      }
    }
  }
}
