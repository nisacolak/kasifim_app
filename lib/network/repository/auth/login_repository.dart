import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import 'package:kasifim_app/network/local/isar/collection/auth_data.dart';
import 'package:kasifim_app/network/models/auth/login/login_request_model.dart';
import 'package:kasifim_app/network/models/auth/login/login_response.model.dart';
import 'package:kasifim_app/network/rest_api/rest_client.dart';
import 'package:logger/logger.dart';

class LoginRepository {
  LoginRepository._();

  static LoginRepository _instance = LoginRepository._();

  static LoginRepository get instance => _instance;

  Future<int> loginService(String email, String password) async {
    final dio = Dio();
    final client = RestClient(dio);
    final Logger logger = Logger();

    try {
      final response = await client
          .login(LoginRequestModel(email: email, password: password));
      final responseModel = LoginResponseModel.fromJson(response.toJson());
      logger.i(response.toJson());

      final isar = await Isar.getInstance();

      final newUser = AuthData()..token = responseModel.accessToken;

      await isar!.writeTxn(() async {
        await isar.authDatas.put(newUser);
      });
      return 200;
    } on DioError catch (e) {
      if (e.response != null && e.response?.statusCode == 400) {
        return 400;
      } else {
        return 502;
      }
    }
  }
}
