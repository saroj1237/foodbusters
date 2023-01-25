import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/domain/entities/resturant_entity.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/presentation/bloc/restaurant_list_bloc/restaurant_list_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ResturantCategoryWidget extends StatelessWidget {
  const ResturantCategoryWidget({Key? key, required this.restaurant})
      : super(key: key);

  final RestaurantCategory restaurant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context
            .read<RestaurantListBloc>()
            .add(GetRestaurantsList(restaurant.id!));
        context.push(AppRoutes.restaurantListPage, extra: restaurant.name);
      },
      child: Container(
        width: AppSize.s70,
        margin: const EdgeInsets.only(left: AppMargin.m14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSize.s30),
              child: CircleAvatar(
                radius: AppSize.s35,
                backgroundColor: ColorManager.lightGrey,
                child: ClipOval(
                  child: CustomCachedImage(
                    imageUrl: restaurant.image!,
                    width: AppSize.s60,
                    height: AppSize.s60,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: AppSize.s10),
            Text(
              restaurant.name!,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: GoogleFonts.lato(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: ColorManager.categorySliderTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
