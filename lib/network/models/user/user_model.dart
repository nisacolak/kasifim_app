class UserModel {
  bool? success;
  List<Data>? data;

  UserModel({this.success, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? name;
  String? email;
  String? role;
  String? profileImage;
  bool? blocked;
  String? createdAt;
  int? iV;

  List<String>? favorites;
  List<String>? followers;
  List<String>? following;
  List<String>? comments;

  Data({
    this.sId,
    this.name,
    this.email,
    this.role,
    this.profileImage,
    this.blocked,
    this.createdAt,
    this.iV,
    this.favorites,
    this.followers,
    this.following,
    this.comments,
  });

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    role = json['role'];
    profileImage = json['profile_image'];
    blocked = json['blocked'];
    createdAt = json['createdAt'];
    iV = json['__v'];

    favorites = json['favorites'].cast<String>();
    followers = json['followers'].cast<String>();
    following = json['following'].cast<String>();
    comments = json['comments'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['role'] = this.role;
    data['profile_image'] = this.profileImage;
    data['blocked'] = this.blocked;
    data['createdAt'] = this.createdAt;
    data['__v'] = this.iV;

    data['favorites'] = this.favorites;
    data['followers'] = this.followers;
    data['following'] = this.following;
    data['comments'] = this.comments;

    return data;
  }
}
