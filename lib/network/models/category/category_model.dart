class CategoryModel {
  bool? success;
  List<String>? data;

  CategoryModel({this.success, this.data});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['data'] = this.data;
    return data;
  }
}
