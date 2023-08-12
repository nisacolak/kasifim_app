import 'package:isar/isar.dart';

part 'user_data.g.dart';

@collection
class UserDatas {
  Id id = 1;
  String? sId;
  String? name;
  String? email;
  String? role;
  String? profileImage;
  bool? blocked;

  int? iV;

  List<String>? favorites;
  List<String>? followers;
  List<String>? following;
  List<String>? comments;
}
