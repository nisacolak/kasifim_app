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
    try {
      final response = await client.getUser(token);
      int i = 1;
      response.data!.forEach((element) async {
        final data = UserDatas()
          ..id = i++
          ..sId = element.sId
          ..name = element.name
          ..email = element.email
          ..profileImage = element.profileImage
          ..favorites = element.favorites
          ..comments = element.comments
          ..followers = element.followers
          ..following = element.following;
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
