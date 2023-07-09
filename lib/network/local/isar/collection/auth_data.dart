import 'package:isar/isar.dart';

part 'auth_data.g.dart';

@collection
class AuthData {
  Id id = 1;
  String? token;
}
