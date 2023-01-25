import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/helpers/distance_betn_geocoordinates.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/bloc/current_position/current_position_cubit.dart';
import 'package:foodbusters/features/favourites/presentation/bloc/favourite_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/pages/restaurant_detail_page.dart';
import 'package:foodbusters/features/restaurant/restaurant_category/presentation/bloc/restaurant_list_bloc/restaurant_list_bloc.dart';
import 'package:go_router/go_router.dart';

class RestaurantListPage extends StatefulWidget {
  const RestaurantListPage({
    Key? key,
    required this.restaurantCategoryName,
  }) : super(key: key);
  final String restaurantCategoryName;

  @override
  State<RestaurantListPage> createState() => _RestaurantListPageState();
}

class _RestaurantListPageState extends State<RestaurantListPage> {
  @override
  void initState() {
    super.initState();
    final positonState = context.read<CurrentPositionCubit>().state;
    if (positonState is! CurrentPositionLoaded) {
      context.read<CurrentPositionCubit>().getCurrentPosition();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.restaurantCategoryName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: BlocBuilder<RestaurantListBloc, RestaurantListState>(
          builder: (context, state) {
            return state.maybeWhen(
              restaurantsListloading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              restaurantsListloaded: (restaurantList) {
                return restaurantList.isNotEmpty
                    ? ListView.separated(
                        itemCount: restaurantList.length,
                        itemBuilder: (context, index) {
                          final restaurant = restaurantList[index];

                          final positonState =
                              context.read<CurrentPositionCubit>().state;
                          if (positonState is CurrentPositionLoaded) {
                            num distance = calculateDistance(
                              [
                                positonState.currentPosition.latitude,
                                positonState.currentPosition.longitude
                              ],
                              [restaurant.lat ?? 0, restaurant.lng ?? 0],
                            );
                            return RestaurantItem(
                                restaurant: restaurant, distance: distance);
                          }
                          return RestaurantItem(
                              restaurant: restaurant, distance: 0);
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const Divider();
                        },
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: SvgPicture.asset(ImageAsset.emptyItems)),
                          const SizedBox(
                            height: 16,
                          ),
                          customText("No restaurants in this category",
                              ColorManager.textDark, 20, FontWeight.w800),
                        ],
                      );
              },
              restaurantsListError: (msg) {
                return Text(msg);
              },
              orElse: () {
                return const Center(child: Text("OrElse run"));
              },
            );
          },
        ),
      ),
    );
  }
}

class RestaurantItem extends StatelessWidget {
  final Restaurant restaurant;
  final num? distance;
  final bool? showFavIcon;
  const RestaurantItem({
    Key? key,
    required this.restaurant,
    this.distance,
    this.showFavIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRoutes.restaurantDetailPage,
            extra: RestaurantDetailPageModel(restaurantId: restaurant.id));
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: AppPadding.p10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CustomCachedImage(
                imageUrl: restaurant.images != null ? restaurant.images! : '',
                height: AppSize.s65,
                width: AppSize.s65,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: AppSize.s16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customText(restaurant.name, ColorManager.textDark, 18,
                      FontWeight.w700),
                  const SizedBox(height: AppSize.s8),
                  customText(restaurant.address ?? '', ColorManager.textGrey,
                      14, FontWeight.w400),
                  const SizedBox(height: AppSize.s8),
                  customText(
                      "(approx: ${distance!.toStringAsFixed(2)} km away)",
                      ColorManager.skyBlue,
                      12,
                      FontWeight.w400)
                ],
              ),
            ),
            if (showFavIcon != null)
              GestureDetector(
                onTap: () {
                  context
                      .read<FavouriteBloc>()
                      .add(AddFavouriteRestaurant(restaurant.id, false));
                  context
                      .read<FavouriteBloc>()
                      .add(const GetFavouriteRestaurants());
                },
                child: Container(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  decoration: BoxDecoration(
                    color: ColorManager.bbCategoryBg,
                    borderRadius: BorderRadius.circular(AppSize.s10),
                  ),
                  child: const Icon(Icons.close),
                ),
              )
          ],
        ),
      ),
    );
  }
}
