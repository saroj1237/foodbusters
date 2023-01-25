import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/pages/homepage_widgets/deals/bloc/bb_deals_bloc.dart';
import 'package:go_router/go_router.dart';

class BBDeals extends StatelessWidget {
  const BBDeals({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BbDealsBloc, BbDealsState>(
      builder: (context, state) {
        return state.maybeWhen(
          getBBDealsLoading: () {
            return const SizedBox.shrink();
          },
          getBBDealsSuccess: (deals) {
            return deals.isNotEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: AppSize.s16),
                      Text(
                        "Best Deals",
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(height: AppSize.s16),
                      Container(
                        height: 200,
                        padding: EdgeInsets.zero,
                        child: ListView.builder(
                          itemCount: deals.length,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                context.push(AppRoutes.productDetailPage,
                                    extra: deals[index].id);
                              },
                              child: Container(
                                width: 140,
                                height: double.maxFinite,
                                margin:
                                    const EdgeInsets.only(right: AppMargin.m10),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: CustomCachedImage(
                                          imageUrl:
                                              deals[index].images != null &&
                                                      deals[index]
                                                          .images!
                                                          .isNotEmpty
                                                  ? deals[index].images![0]
                                                  : "",
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              3,
                                          height: AppSize.s150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        padding:
                                            const EdgeInsets.all(AppPadding.p4),
                                        color: Colors.white,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Rs. ${deals[index].price}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4
                                                  ?.copyWith(
                                                      color:
                                                          ColorManager.textDark,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w700),
                                            ),
                                            Text(
                                              "${deals[index].detail}",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4
                                                  ?.copyWith(
                                                      color: ColorManager.grey2,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )
                : const SizedBox.shrink();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
