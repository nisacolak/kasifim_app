import 'package:isar/isar.dart';
import 'package:kasifim_app/network/local/isar/collection/auth_data.dart';

class IsarLocalDatabase {
  IsarLocalDatabase._();

  static IsarLocalDatabase _instance = IsarLocalDatabase._();
  static IsarLocalDatabase get instance => _instance;

  initIsar() async {
    await Isar.openSync([
      AuthDataSchema,
    ]);
  }

  getAccessToken() async {
    final isar = await Isar.getInstance();
    final authData = await isar?.authDatas.get(1);

    return 'Bearer: ${authData?.token}';
  }
}
