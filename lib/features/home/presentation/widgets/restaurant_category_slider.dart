import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/features/home/presentation/widgets/resturant_category_widget.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/presentation/bloc/restaurant_category_bloc.dart';

import 'homepage_shimmer/resturant_category_shimmer.dart';

class RestaurantCategorySlider extends StatelessWidget {
  const RestaurantCategorySlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantCategoryBloc, RestaurantCategoryState>(
      builder: (context, state) {
        return state.maybeWhen(
          getRestaurantCategoryLoading: () {
            return const ResturantCategoryShimmer();
          },
          getRestaurantCategorySuccess: (restaurantList) {
            return restaurantList.isNotEmpty
                ? SizedBox(
                    height: 100,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: restaurantList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final restaurant = restaurantList[index];
                          return ResturantCategoryWidget(
                            restaurant: restaurant,
                          );
                        }),
                  )
                : const Text("");
          },
          orElse: () {
            return const Text("");
          },
        );
      },
    );
  }
}
