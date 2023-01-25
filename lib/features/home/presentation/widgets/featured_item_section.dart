import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/home/presentation/widgets/featured_item_card.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/featured_item/featured_item_bloc.dart';

class FeaturedItemSection extends StatelessWidget {
  const FeaturedItemSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedItemBloc, FeaturedItemState>(
        builder: (context, state) {
      return state.maybeWhen(
        featuredItemsLoading: () {
          // return const CircularProgressIndicator();
          return const Center();
        },
        featuredItemsFailure: (error) {
          return const SizedBox.shrink();
        },
        featuredItemsLoaded: (items) {
          return ListView.builder(
              itemCount: items.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final featuredItem = items[index];
                return Container(
                  color: (index % 2 == 0)
                      ? ColorManager.featuredSection
                      : ColorManager.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 20, left: 16),
                        child: customText(featuredItem.title,
                            ColorManager.textDark, 20, FontWeight.w800),
                      ),
                      SizedBox(
                        // color: Colors.amber,
                        height: MediaQuery.of(context).size.height / 3.6,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: featuredItem.items.length,
                          itemBuilder: (context, index) {
                            final item = featuredItem.items[index];
                            if (item.containsKey('category')) {
                              return FeaturedFoodCategoryCard(
                                id: item['category']['id'],
                                name: item['category']['name'],
                                imageUrl: item['category']['foodCatImage'][0],
                                restaurantId: item['restaurant_id']["id"],
                                restaurantName: item['restaurant_id']
                                    ["restaurant_name"],
                                restaurantAddress: item['restaurant_id']
                                    ['address'],
                              );
                            } else if (item.containsKey('product')) {
                              return FeaturedFoodCard(
                                id: item["product"]['id'],
                                name: item['product']['name'],
                                detail: item['product']['detail'] ?? "",
                                price: item['product']['price'],
                                discountedPrice: item['product']
                                    ['discountedPrice'],
                                imageUrl: item['product']['foodImage'][0],
                                restaurantId: item['restaurant_id']['id'],
                                restaurantName: item['restaurant_id']
                                    ['restaurant_name'],
                              );
                            }

                            return Text(item.toString());
                          },
                        ),
                      )
                    ],
                  ),
                );
              });
        },
        orElse: () {
          return Text(state.toString());
        },
      );
    });
  }
}
