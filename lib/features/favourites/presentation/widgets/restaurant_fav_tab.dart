import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/distance_betn_geocoordinates.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/bloc/current_position/current_position_cubit.dart';
import 'package:foodbusters/features/favourites/presentation/bloc/favourite_bloc.dart';
import 'package:foodbusters/features/favourites/presentation/widgets/empty_widget.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/pages/restaurant_list_page.dart';
import 'package:go_router/go_router.dart';

class RestaurantFavouriteTab extends StatefulWidget {
  const RestaurantFavouriteTab({Key? key}) : super(key: key);

  @override
  State<RestaurantFavouriteTab> createState() => _RestaurantFavouriteTabState();
}

class _RestaurantFavouriteTabState extends State<RestaurantFavouriteTab> {
  @override
  void initState() {
    context.read<FavouriteBloc>().add(const GetFavouriteRestaurants());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteBloc, FavouriteState>(
      builder: (context, state) {
        return state.maybeWhen(
          favLoading: () {
            return const Center(child: CircularProgressIndicator());
          },
          favRestLoaded: (restList) {
            return restList.isEmpty
                ? EmptyFavourites(
                    imageUrl: ImageAsset.emptyFavRestaurant,
                    onPressed: () {
                      context.pop();
                    },
                    bodyText:
                        "Once you favorite a restaurant, it will appear here.",
                  )
                : ListView.separated(
                    itemCount: restList.length,
                    separatorBuilder: (context, index) {
                      return Divider(
                        height: 0,
                        color: ColorManager.textGrey,
                      );
                    },
                    itemBuilder: (context, index) {
                      final restaurant = restList[index];
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
                        return Padding(
                          padding: const EdgeInsets.all(AppPadding.p16),
                          child: RestaurantItem(
                            restaurant: restaurant,
                            distance: distance,
                            showFavIcon: true,
                          ),
                        );
                      }
                      return Padding(
                        padding: const EdgeInsets.all(AppPadding.p16),
                        child: RestaurantItem(
                          restaurant: restaurant,
                          distance: 0,
                          showFavIcon: true,
                        ),
                      );
                    },
                  );
          },
          orElse: () {
            return Container();
          },
        );
      },
    );
  }
}
