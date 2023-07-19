import 'package:dio/dio.dart';
import 'package:isar/isar.dart';
import 'package:kasifim_app/network/local/isar/collection/auth_data.dart';
import 'package:kasifim_app/network/models/auth/register/register_request_model.dart';
import 'package:kasifim_app/network/models/auth/register/register_response_model.dart';
import 'package:kasifim_app/network/rest_api/rest_client.dart';
import 'package:logger/logger.dart';

class RegisterRepository {
  RegisterRepository._();

  static RegisterRepository _instance = RegisterRepository._();

  static RegisterRepository get instance => _instance;

  Future<int> registerService(
      String name, String email, String password) async {
    final dio = Dio();
    final client = RestClient(dio);
    final Logger logger = Logger();

    try {
      final response = await client.register(
          RegisterRequestModel(name: name, email: email, password: password));
      final responseModel = RegisterResponseModel.fromJson(response.toJson());
      logger.i(response.toJson());

      final isar = await Isar.getInstance();

      final newUser = AuthData()..token = responseModel.message;

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
