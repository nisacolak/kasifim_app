import 'package:dio/dio.dart';
import 'package:kasifim_app/network/dio/dio_base_constants.dart';
import 'package:kasifim_app/network/models/auth/login/login_request_model.dart';
import 'package:kasifim_app/network/models/auth/login/login_response.model.dart';
import 'package:kasifim_app/network/models/auth/register/register_request_model.dart';
import 'package:kasifim_app/network/models/auth/register/register_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  /* Auth Operations*/
  @POST("auth/login")
  Future<LoginResponseModel> login(@Body() LoginRequestModel body);
  @POST("api/auth/register")
  Future<RegisterResponseModel> register(@Body() RegisterRequestModel body);
}
