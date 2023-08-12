import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import 'package:kasifim_app/network/local/isar/collection/user_data.dart';
import 'package:kasifim_app/network/local/isar/isar_client.dart';
import 'package:kasifim_app/network/rest_api/rest_client.dart';
import 'package:logger/logger.dart';

class UserRepository {
  UserRepository._();

  static UserRepository _instance = UserRepository._();

  static UserRepository get instance => _instance;

  Future<int> getUserService() async {
    final dio = Dio();
    final client = RestClient(dio);
    final IsarLocalDatabase _isarLocalDatabase = IsarLocalDatabase.instance;
    final Logger logger = Logger();

    final isar = await Isar.getInstance()!;

    final token = await _isarLocalDatabase.getAccessToken();
    final id = await _isarLocalDatabase.getUser();
    try {
      final response = await client.getUser(id, token);

      print(response.data![0].name);
      final user = UserDatas()
        ..sId = response.data![0].sId
        ..name = response.data![0].name
        ..email = response.data![0].email
        ..profileImage = response.data![0].profileImage
        ..favorites = response.data![0].favorites
        ..comments = response.data![0].comments
        ..followers = response.data![0].followers
        ..following = response.data![0].following;
      await isar!.writeTxn(() async {
        await isar.userDatas.put(user);
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
