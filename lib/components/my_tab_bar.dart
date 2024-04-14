import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;

  const MyTabBar({
    super.key,
    required this.tabController,
  });

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map(
      (category) {
        final categoryName = category.toString().split('.').last;
        return Tab(
          child: Text(
            categoryName,
            // Adjust font size for smaller titles (consider responsiveness)
            style: TextStyle(fontSize: 9.0),
          ),
        );
      },
    ).toList();
  }
 
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: _buildCategoryTabs(),
      // Optionally adjust tab label padding for finer control (experiment)
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 5.0),
    );
  }
}
















// import 'package:flutter/material.dart';
// import 'package:food_app/models/food.dart';

// class MyTabBar extends StatelessWidget {
//   final TabController tabController;

//   const MyTabBar({
//     super.key,
//     required this.tabController,
//   });

//   List<Tab> _buildCategoryTabs() {
//     return FoodCategory.values.map(
//       (category) {
//         return Tab(
//           text: category.toString().split('.').last,
//         );
//       },
//     ).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return TabBar(
//       controller: tabController,
//       tabs: _buildCategoryTabs(),
//     );
//   }
// }
