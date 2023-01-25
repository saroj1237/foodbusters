import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/cart/presentation/bloc/cart_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/presentation/bloc/sub_category/sub_category_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/bloc/product_bloc.dart';
import 'package:foodbusters/features/bhat_bhateni/product/presentation/widgets/product_card.dart';
import 'package:go_router/go_router.dart';

class BBSubCategoryPage extends StatefulWidget {
  const BBSubCategoryPage({Key? key, required this.category}) : super(key: key);
  final BBCategory category;

  @override
  State<BBSubCategoryPage> createState() => _BBSubCategoryPageState();
}

class _BBSubCategoryPageState extends State<BBSubCategoryPage> {
  //for pagination
  int pageIndex = 1;

  late BBSubCategory currentSubCategory;
  final _scrollController = ScrollController();

  bool hasReachedMax = false;
  UrlMeta? meta;

  @override
  void initState() {
    super.initState();
    context.read<SubCategoryBloc>().add(GetBBSubCategoryList(widget.category));
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isBottom) {
      print("not null $meta");
      if (meta != null) {
        if (pageIndex < meta!.pages!) {
          print("not null $currentSubCategory");
          pageIndex += 1;
          context.read<ProductBloc>().add(GetSubCategoryNextProducts(
              subCategory: currentSubCategory, pageIndex: pageIndex));
        } else {}
        setState(() {});
      }
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll);
  }

  ValueNotifier<bool> loadSubCategoryProducts = ValueNotifier<bool>(true);
  @override
  void dispose() {
    super.dispose();
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    loadSubCategoryProducts.value = false;
    loadSubCategoryProducts.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context.read<ProductBloc>().add(const ResetProductState());
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.bbPrimary,
          iconTheme: Theme.of(context)
              .appBarTheme
              .iconTheme
              ?.copyWith(color: ColorManager.white),
          title: Text(
            widget.category.name,
            style: Theme.of(context)
                .appBarTheme
                .titleTextStyle
                ?.copyWith(color: ColorManager.white),
          ),
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
          child: Stack(
            children: [
              BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
                if (state.state == CurrentState.loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state.state == CurrentState.error) {
                  return const Center(
                    child: Text("No items"),
                  );
                } else if (state.state == CurrentState.loaded) {
                  if (state.categoryProducts != null &&
                      state.categoryProducts!.isNotEmpty) {
                    final categoryProducts = state.categoryProducts;
                    if (state.paginationData != null) {
                      meta = state.paginationData!.meta;
                      // setState(() {});
                    }

                    return SingleChildScrollView(
                      controller: _scrollController,
                      child: Container(
                          padding: const EdgeInsets.fromLTRB(
                              AppPadding.p16, 50, 16, 0),
                          child: GridView.builder(
                              // controller: _scrollController,
                              itemCount: categoryProducts!.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 3 / 4,
                                crossAxisCount: 2,
                                mainAxisSpacing: AppSize.s10,
                                crossAxisSpacing: AppSize.s10,
                              ),
                              padding: EdgeInsets.zero,
                              itemBuilder: (context, index) {
                                final product = categoryProducts[index];
                                return ProductCard(product: product);
                              })),
                    );
                  } else {
                    return const Text("Empty");
                  }
                } else {
                  return const SizedBox.shrink();
                }
              }),
              BlocConsumer<SubCategoryBloc, SubCategoryState>(
                listener: (context, state) {
                  state.maybeWhen(
                    subCategoriesLoaded: (data, selected) {
                      if (data.isNotEmpty) {
                        if (loadSubCategoryProducts.value) {
                          context.read<ProductBloc>().add(
                              GetSubCategoryProducts(
                                  subCategory: data[0], pageIndex: 1));
                          currentSubCategory = data[0];

                          loadSubCategoryProducts.value = false;
                          setState(() {});
                        }
                      }
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    subCategoriesLoading: () {
                      return const LinearProgressIndicator();
                    },
                    subCategoriesLoaded: (subcategories, selected) {
                      if (subcategories.isNotEmpty) {
                        return Container(
                          height: AppSize.s55,
                          padding: const EdgeInsets.all(AppPadding.p10),
                          color: ColorManager.white,
                          width: double.infinity,
                          child: Center(
                            child: ListView.builder(
                                itemCount: subcategories.length,
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  final subCategory = subcategories[index];
                                  return GestureDetector(
                                    onTap: () {
                                      // get the products of that subcategory
                                      context.read<ProductBloc>().add(
                                          GetSubCategoryProducts(
                                              subCategory: subCategory,
                                              pageIndex: 1));
                                      // change the active subcategory for UI

                                      context.read<SubCategoryBloc>().add(
                                          ChangeActiveSubCategory(subCategory));
                                      setState(() {
                                        currentSubCategory =
                                            subcategories[index];
                                      });
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: AppPadding.p15,
                                            vertical: AppPadding.p10),
                                        margin: const EdgeInsets.only(
                                            right: AppMargin.m10),
                                        decoration: BoxDecoration(
                                            color: selected == subCategory
                                                ? ColorManager.grey
                                                : ColorManager.lightGrey,
                                            borderRadius: BorderRadius.circular(
                                                AppSize.s5)),
                                        child: Text(
                                          subCategory.name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.copyWith(
                                                fontSize: FontSize.s12,
                                                color: selected == subCategory
                                                    ? ColorManager.white
                                                    : ColorManager.black,
                                                fontWeight:
                                                    FontWeightManager.bold,
                                              ),
                                        )),
                                  );
                                }),
                          ),
                        );
                      } else {
                        return const Center(
                          child: Text("No Sub categories"),
                        );
                      }
                    },
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
