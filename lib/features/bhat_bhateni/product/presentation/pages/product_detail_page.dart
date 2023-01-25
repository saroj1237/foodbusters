import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/domain/entities/cart_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/presentation/bloc/cart_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/bloc/product_detail/product_detail_cubit.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/bloc/auth/auth_cubit.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key, required this.productId})
      : super(key: key);
  final String productId;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final ValueNotifier<int> quantity = ValueNotifier<int>(1);

  @override
  void initState() {
    super.initState();
    context.read<ProductDetailCubit>().getProductDetail(widget.productId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailCubit, ProductDetailState>(
      builder: (context, state) {
        return state.maybeWhen(
          productDetailLoading: () {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          productDetailLoaded: (product) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: ColorManager.bbPrimary,
                iconTheme: Theme.of(context)
                    .appBarTheme
                    .iconTheme
                    ?.copyWith(color: ColorManager.white),
                titleTextStyle:
                    Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                          color: ColorManager.white,
                        ),
                title: Text(product.name),
              ),
              body: BlocListener<CartBloc, CartState>(
                listener: (context, state) {
                  state.maybeWhen(
                    cartError: (error) {
                      showSnackBar(context,
                          message: error, behavior: SnackBarBehavior.floating);
                    },
                    addToCartSuccess: () {
                      showSnackBar(
                        context,
                        message: "Added to Cart",
                        behavior: SnackBarBehavior.floating,
                        actionLabel: "View cart",
                        onPressed: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          context.push(AppRoutes.cartPage);
                        },
                      );
                    },
                    orElse: () {},
                  );
                },
                child: SafeArea(
                  child: SingleChildScrollView(
                      child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // image slider-------------

                          Container(
                            decoration: BoxDecoration(
                                color: ColorManager.black,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Flexible(
                                            child: customText(
                                                product.name,
                                                ColorManager.white,
                                                20,
                                                FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: AppSize.s10),
                                      customText(
                                          "Rs. ${product.price.toString()}",
                                          ColorManager.white,
                                          14,
                                          FontWeight.w500),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: ColorManager.profileBg,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: CarouselSlider(
                                    options: CarouselOptions(
                                        aspectRatio: 1,
                                        viewportFraction: 1,
                                        autoPlay: false,
                                        onPageChanged: (index, reason) {}),
                                    items: product.images!
                                        .map(
                                          (image) => Builder(
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () {
                                                  context.push(
                                                      AppRoutes
                                                          .imagePreviewPage,
                                                      extra: product.images!);
                                                },
                                                child: SizedBox(
                                                  width: double.maxFinite,
                                                  child: CustomCachedImage(
                                                    imageUrl: image,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        )
                                        .toList(),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 16),

                          // Tab section
                          DefaultTabController(
                              length: 2,
                              initialIndex: 0,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    TabBar(
                                      labelColor: Colors.black,
                                      indicatorColor: ColorManager.black,
                                      unselectedLabelColor: Colors.grey,
                                      tabs: const [
                                        Tab(text: 'Description'),
                                        Tab(text: 'Review'),
                                      ],
                                    ),
                                    Container(
                                      constraints: BoxConstraints(
                                          maxHeight: MediaQuery.of(context)
                                              .size
                                              .height,
                                          minHeight: 200),
                                      child: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: TabBarView(
                                          children: <Widget>[
                                            Column(
                                              crossAxisAlignment:
                                                  product.detail != null
                                                      ? CrossAxisAlignment.start
                                                      : CrossAxisAlignment
                                                          .center,
                                              children: [
                                                Flexible(
                                                  child: customText(
                                                      product.detail ??
                                                          "No details found",
                                                      ColorManager.textGrey,
                                                      14,
                                                      FontWeight.w500,
                                                      textOverflow: null,
                                                      maxLines: 40),
                                                ),
                                              ],
                                            ),
                                            customText(
                                                'No Review found for this item',
                                                ColorManager.textGrey,
                                                14,
                                                FontWeight.w500)
                                          ],
                                        ),
                                      ),
                                    )
                                  ])),
                          const SizedBox(
                            height: 100,
                          )
                        ]),
                  )),
                ),
              ),
              bottomSheet: Container(
                color: ColorManager.white,
                padding: const EdgeInsets.symmetric(vertical: AppPadding.p16),
                child: Wrap(
                  children: [
                    const Divider(
                      thickness: 1,
                    ),
                    Container(
                      color: ColorManager.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppPadding.p16, vertical: 4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: AppPadding.p10),
                            height: AppSize.s50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: ColorManager.black,
                              ),
                              borderRadius: BorderRadius.circular(AppSize.s28),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      if (quantity.value == 1) return;
                                      quantity.value = quantity.value - 1;
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: ColorManager.bbCategoryBg,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: const Icon(
                                        Icons.remove,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  ValueListenableBuilder(
                                      valueListenable: quantity,
                                      builder: (context, value, _) {
                                        return Text(
                                          value.toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              ?.copyWith(
                                                fontSize: FontSize.s14,
                                                fontWeight:
                                                    FontWeightManager.bold,
                                              ),
                                        );
                                      }),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      quantity.value = quantity.value + 1;
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          color: ColorManager.black,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Icon(
                                        Icons.add,
                                        color: ColorManager.white,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: AppSize.s50),
                          Expanded(
                            child: SizedBox(
                              height: AppSize.s55,
                              child: AppButton(
                                onPressed: () {
                                  final authCubit =
                                      BlocProvider.of<AuthCubit>(context);
                                  if (authCubit.state is Authenticated) {
                                    context.read<CartBloc>().add(
                                          AddToCart(
                                            req: AddToCartReq(
                                                productId: product.id,
                                                quantity: quantity.value),
                                          ),
                                        );
                                    debugPrint("Authenticated");
                                  } else {
                                    debugPrint("UnAuthenticated");
                                    context.push(AppRoutes.loginPage);
                                  }
                                },
                                label: "Add to cart ",
                                bgColor: ColorManager.bbPrimary,
                                labelColor: ColorManager.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          orElse: () {
            return const Scaffold();
          },
        );
      },
    );
  }
}
