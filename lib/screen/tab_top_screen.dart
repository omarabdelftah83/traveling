//
// import 'package:flutter/material.dart';
// import 'package:traveling/screen/categories_screen1.dart';
// import 'package:traveling/screen/favorites_screen.dart';
//
// class TabsScreen extends StatelessWidget {
//   const TabsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(title: Center(child: Text('دليل سياحي')),
//         bottom: const TabBar(tabs: [
//           Tab(icon: Icon(Icons.dashboard),
//           text: 'التطبيقات',
//           ),
//           Tab(icon: Icon(Icons.star),
//             text: 'المفضله',
//           )
//         ],),
//         ),
//         body: TabBarView(children: [
//           CategoriesScreen1(),
//           FavoritesScreen()
//
//         ],),
//       ),
//     );
//   }
// }
