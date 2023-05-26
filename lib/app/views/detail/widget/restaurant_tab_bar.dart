

// class RestaurantTab extends StatefulWidget {
//   RestaurantTab({Key? key}) : super(key: key);

//   @override
//   State<RestaurantTab> createState() => _RestaurantTabState();
// }

// class _RestaurantTabState extends State<RestaurantTab>
//     with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height,
//             decoration: BoxDecoration(
//               color: ColorName.white,
//             ),
//             child: DefaultTabController(
//               length: 3,
//               child: Column(children: [
//                 // TabBar(
//                 //    ),
//                 Expanded(
//                   child: TabBarView(
//                       children: [MenuTab(), ReviewsTab(), DirectionsTab()]),
//                 )
//               ]),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
