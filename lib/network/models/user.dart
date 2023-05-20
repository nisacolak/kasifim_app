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
          "Lorem ipsum dolor sit amet. ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      img: Assets.images.account.path,
      star: 3.5)
];
