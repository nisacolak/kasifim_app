import 'package:isar/isar.dart';
import 'package:kasifim_app/network/local/isar/collection/auth_data.dart';
import 'package:kasifim_app/network/local/isar/collection/restaurant_data.dart';
import 'package:kasifim_app/network/local/isar/collection/user_data.dart';

class IsarLocalDatabase {
  IsarLocalDatabase._();

  static IsarLocalDatabase _instance = IsarLocalDatabase._();
  static IsarLocalDatabase get instance => _instance;

  initIsar() async {
    await Isar.openSync([AuthDataSchema, RestaurantDatasSchema]);
  }

  getAccessToken() async {
    final isar = await Isar.getInstance();
    final authData = await isar?.authDatas.get(1);

    return 'Bearer: ${authData?.token}';
  }

  getAllRestaurant() async {
    final isar = await Isar.getInstance();
    final restaurantDatas = await isar?.restaurantDatas.where().findAll();

    return restaurantDatas;
  }

  getAllRestaurantCount() async {
    final isar = await Isar.getInstance();
    final restaurantCount = await isar?.restaurantDatas.count();
    return restaurantCount;
  }

  getUser() async {
    final isar = await Isar.getInstance();
    final userDatas = await isar?.userDatas.where().findAll();

    return userDatas;
  }
}
