import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/restaurant/new_partners/domain/entities/entiry.dart';

class AllRestaurantsPage extends StatelessWidget {
  const AllRestaurantsPage({Key? key, required this.allRestaurants})
      : super(key: key);
  final List<Restaurant> allRestaurants;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.lightGrey1,
        title: const Text("Availabe restaurants"),
      ),
      body: GridView.builder(
          itemCount: allRestaurants.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 6 / 2,
            mainAxisSpacing: AppSize.s10,
            crossAxisSpacing: AppSize.s10,
          ),
          itemBuilder: (context, index) {
            final restaurant = allRestaurants[index];
            return Container(
              color: Colors.red,
              child: CustomCachedImage(
                imageUrl: restaurant.images![0],
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}
