import 'package:kasifim_app/gen/assets.gen.dart';

class User {
  final int id;
  final String name;
  final String img;
  final String email;
  final String comment;
  final double star;
  User({
    required this.id,
    required this.name,
    required this.img,
    required this.email,
    required this.comment,
    required this.star,
  });
}

List<User> sampleUserModel = [
  User(
      id: 1,
      name: "Slightly Smiling Face",
      email: "",
      comment:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sed sapien augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris pretium nulla dolor.",
      img: Assets.images.account.path,
      star: 3.5)
];
