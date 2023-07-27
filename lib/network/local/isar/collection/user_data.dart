import 'package:isar/isar.dart';

part 'user_data.g.dart';

@collection
class UserDatas {
  Id? id;
  String? sId;
  String? name;
  String? email;
  String? role;
  String? profileImage;
  bool? blocked;
  String? createdAt;
  int? iV;
  String? place;
  String? title;
  String? website;
  List<String>? favorites;
  List<String>? followers;
  List<String>? following;
  List<String>? comments;
  String? resetPasswordExpire;
  String? resetPasswordToken;
}
