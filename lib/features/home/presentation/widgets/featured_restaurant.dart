import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/featured_restaurants/featured_restaurant_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/pages/restaurant_detail_page.dart';
import 'package:go_router/go_router.dart';

class FeaturedRestaurant extends StatelessWidget {
  const FeaturedRestaurant({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedRestaurantBloc, FeaturedRestaurantState>(
      builder: (context, state) {
        return state.maybeWhen(
          featuredRestaurantLoading: () {
            return const Center(
                // child: CircularProgressIndicator(),
                );
          },
          featuredRestaurantFailure: (error) {
            return const SizedBox.shrink();
          },
          featuredRestaurantLoaded: (
            restList,
            activeRes,
            foodList,
          ) {
            return Container(
              height: 375,
              width: double.infinity,
              color: ColorManager.black,
              padding: const EdgeInsets.symmetric(
                vertical: AppPadding.p20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: customText("Featured Resturants", ColorManager.white,
                        20, FontWeight.w800),
                  ),

                  const SizedBox(height: AppSize.s20), // height = 32
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemCount: foodList?.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        final food = foodList?[index];
                        return GestureDetector(
                          onTap: () {
                            context.push(AppRoutes.restaurantDetailPage,
                                extra: RestaurantDetailPageModel(
                                    restaurantId: activeRes.id));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.8,
                            height: 150,
                            margin: const EdgeInsets.only(
                              left: AppMargin.m10,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorManager.white.withOpacity(0.5),
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: CustomCachedImage(
                                    imageUrl: food != null &&
                                            food.foodImage!.isNotEmpty
                                        ? food.foodImage![0]
                                        : "",
                                    fit: BoxFit.cover,
                                    width:
                                        MediaQuery.of(context).size.width / 1.8,
                                    height: 150,
                                  ),
                                ),
                                Positioned(
                                  left: AppSize.s20,
                                  bottom: AppSize.s20,
                                  child: SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 1.8,
                                    child: customTextOverflow(
                                        food?.name ?? '',
                                        ColorManager.white,
                                        20,
                                        FontWeight.w800,
                                        TextOverflow.ellipsis),
                                  ),
                                  // child: Text(
                                  //   food?.name ?? '',
                                  //   style: Theme.of(context)
                                  //       .textTheme
                                  //       .headline5
                                  //       ?.copyWith(
                                  //         color: ColorManager.white,
                                  //       ),
                                  // ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ), // heightn = 182
                  const SizedBox(height: AppSize.s20), // height = 198

                  Center(
                      child: customText(activeRes.name, ColorManager.white, 20,
                          FontWeight.w800)),
                  const SizedBox(height: AppSize.s5),
                  Center(
                      child: customText(activeRes.address ?? "",
                          ColorManager.white, 12, FontWeight.w400)),
                  const Spacer(),
                  // restaurant list
                  Center(
                    child: SizedBox(
                      height: 60,
                      child: ListView.builder(
                          itemCount: restList.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                context
                                    .read<FeaturedRestaurantBloc>()
                                    .add(GetRestaurantFoods(restList[index]));
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.only(right: AppMargin.m10),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: activeRes == restList[index]
                                      ? ColorManager.primary
                                      : ColorManager.transparent,
                                  child: CircleAvatar(
                                    radius: 27,
                                    backgroundColor: ColorManager.white,
                                    backgroundImage: NetworkImage(
                                        restList[index].images ?? '',
                                        scale: 10),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
