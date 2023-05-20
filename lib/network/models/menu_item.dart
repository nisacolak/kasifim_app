import 'package:equatable/equatable.dart';
import 'package:kasifim_app/gen/assets.gen.dart';

class MenuItem {
  final int id;
  final int restaurantId;
  final String name;
  final String category;
  final String desc;
  final String price;
  final String itemPath;

  MenuItem(
      {required this.id,
      required this.restaurantId,
      required this.name,
      required this.category,
      required this.desc,
      required this.price,
      required this.itemPath});
}

// List<CategoryItem> categoryItem= []

List<MenuItem> menuItems = [
  MenuItem(
      id: 1,
      restaurantId: 1,
      name: 'Chocolate Cookie',
      category: 'Cookies',
      desc: '',
      price: '15',
      itemPath: Assets.images.cookie.path),
  MenuItem(
      id: 2,
      restaurantId: 2,
      name: 'Chocolate Cake',
      category: 'Cakes',
      desc: 'chocolate chip cream filled cupcake',
      price: '32',
      itemPath: Assets.images.chocolateCake.path),
  MenuItem(
      id: 3,
      restaurantId: 3,
      name: 'Chocolate Cake',
      category: 'Cakes',
      desc: 'chocolate chip cream filled cupcake',
      price: '32',
      itemPath: Assets.images.chocolateCake.path),
  MenuItem(
      id: 4,
      restaurantId: 4,
      name: 'Chocolate Cake',
      category: 'Cakes',
      desc: 'chocolate chip cream filled cupcake',
      price: '32',
      itemPath: Assets.images.chocolateCake.path),
];
