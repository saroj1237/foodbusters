import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/search/presentation/bloc/trending_search_bloc.dart';
import 'package:foodbusters/features/search/presentation/search_bloc/search_bloc.dart';
import 'package:foodbusters/features/search/presentation/widgets/searched_food_card.dart';
import 'package:foodbusters/features/search/presentation/widgets/searched_restaurant_card.dart';
import 'package:foodbusters/features/search/presentation/widgets/shimmer_loading.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  Timer? _debounce;
  bool isSearched = false;
  final _scrollController = ScrollController();
  bool hasReachedMax = false;
  bool loaderVisibiliy = false;

  @override
  void initState() {
    super.initState();
    context.read<SearchBloc>().add(const ResetState());
    _scrollController.addListener(_onScroll);
  }

  onSearch(String query) {
    if (query.isEmpty) {
      context.read<SearchBloc>().add(const ResetState());
      setState(() {
        isSearched = false;
      });
    } else {
      setState(() {
        isSearched = true;
      });
    }

    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      // do something with query
      if (query.length < 2) return;

      var finalQuery = query;
      context.read<SearchBloc>().add(StartSearch(finalQuery));
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    _debounce?.cancel();
  }

  void _onScroll() {
    if (_isBottom) {
      if (!hasReachedMax) {
        loaderVisibiliy = true;
        final blocState = BlocProvider.of<SearchBloc>(context).state;
        if (blocState is SearchLoaded) {
          if (!blocState.searchNextPage) return;
          context.read<SearchBloc>().add(const SearchNxtPage());
        }
      } else {
        loaderVisibiliy = false;
      }
      setState(() {});
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll);
  }

  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        FocusManager.instance.primaryFocus?.unfocus();
        return true;
      },
      child: Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(
          toolbarHeight: 50,
          leading: BackButton(color: ColorManager.grey),
          elevation: 0,
          backgroundColor: ColorManager.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                splashColor: ColorManager.transparent,
                color: ColorManager.grey,
                onPressed: () {
                  _searchController.clear();
                  context.read<SearchBloc>().add(const ResetState());
                  setState(() {
                    _searchController.clear();
                    isSearched = false;
                  });
                },
                icon: _searchController.text.isEmpty
                    ? const Icon(Icons.search)
                    : const Icon(Icons.close_rounded),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
            ),
          ],
          title: TextField(
            onChanged: onSearch,
            autofocus: false,
            controller: _searchController,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search for restaurants, items",
                hintStyle: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: ColorManager.hintColor)),
          ),
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Divider(
                color: ColorManager.lightGrey1,
                thickness: 2,
              ),
              Visibility(
                visible: !isSearched,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: BlocBuilder<TrendingSearchBloc, TrendingSearchState>(
                    builder: (context, state) {
                      return state.maybeWhen(trendingLoaded: (data) {
                        return Wrap(
                          children: [
                            if (data.recentSearches.isNotEmpty) ...{
                              SizedBox(
                                height: 120,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.history,
                                          color: ColorManager.grey,
                                        ),
                                        const SizedBox(
                                          width: AppSize.s16,
                                        ),
                                        customText(
                                            "Recent history",
                                            ColorManager.textDark,
                                            20,
                                            FontWeight.w600),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 16),
                                      height: 50,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: data.recentSearches.length,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: () {
                                              _searchController.text =
                                                  data.recentSearches[index];
                                              onSearch(
                                                  data.recentSearches[index]);
                                            },
                                            child: Center(
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 12,
                                                        horizontal: 24),
                                                margin: const EdgeInsets.only(
                                                    right: 8),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: ColorManager
                                                          .lightGrey
                                                          .withOpacity(0.5),
                                                      width: 1.5),
                                                ),
                                                child: customText(
                                                    data.recentSearches[index],
                                                    ColorManager.black,
                                                    14,
                                                    FontWeight.w500),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    )
                                  ],
                                ),
                              ),
                            } else ...{
                              const SizedBox.shrink()
                            },
                            if (data.trendingSearches.isNotEmpty) ...{
                              SizedBox(
                                height: 100,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.history,
                                          color: ColorManager.grey,
                                        ),
                                        const SizedBox(
                                          width: AppSize.s16,
                                        ),
                                        customText(
                                            "Trending searches",
                                            ColorManager.textDark,
                                            20,
                                            FontWeight.w600),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 16),
                                      height: 50,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: data.trendingSearches.length,
                                        itemBuilder: (context, index) {
                                          return GestureDetector(
                                            onTap: () {
                                              _searchController.text =
                                                  data.trendingSearches[index];
                                              onSearch(
                                                  data.trendingSearches[index]);
                                            },
                                            child: Center(
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 12,
                                                        horizontal: 24),
                                                margin: const EdgeInsets.only(
                                                    right: 8),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: ColorManager
                                                          .lightGrey
                                                          .withOpacity(0.5),
                                                      width: 1.5),
                                                ),
                                                child: customText(
                                                    data.trendingSearches[
                                                        index],
                                                    ColorManager.black,
                                                    14,
                                                    FontWeight.w500),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            } else ...{
                              const SizedBox.shrink()
                            },
                          ],
                        );
                      }, orElse: () {
                        return const SizedBox.shrink();
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(AppPadding.p16),
                child: BlocConsumer<SearchBloc, SearchState>(
                  listener: (context, state) {
                    state.maybeWhen(
                        searchReachedMax: (max, data) {
                          setState(() {
                            hasReachedMax = max;
                          });
                        },
                        orElse: () {});
                  },
                  builder: (context, state) {
                    return state.maybeWhen(
                      searchLoading: () {
                        return const SearchLoadingWidget();
                      },
                      searchError: (error) {
                        return Center(child: Text(error));
                      },
                      searchReachedMax: (max, data) {
                        return SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (data.restaurants.isEmpty &&
                                  data.foods.isEmpty) ...{
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 100,
                                    ),
                                    Icon(
                                      Icons.sticky_note_2_outlined,
                                      size: 58,
                                      color: ColorManager.grey2,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    customText(
                                        "No results found",
                                        ColorManager.grey1,
                                        20,
                                        FontWeight.w800),
                                  ],
                                )
                              } else ...{
                                // restaurant section
                                if (data.restaurants.isNotEmpty) ...{
                                  ...[
                                    Text("Restaurants",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4
                                            ?.copyWith(
                                                color: ColorManager.textDark,
                                                fontWeight: FontWeight.w600)),
                                    const SizedBox(height: AppSize.s16),
                                    SizedBox(
                                      // color: Colors.black,
                                      height: AppSize.s150,
                                      width: double.infinity,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: data.restaurants.length,
                                        itemBuilder: (context, index) {
                                          final restaurant =
                                              data.restaurants[index];
                                          return SearchedRestaurantCard(
                                              restaurant: restaurant);
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: AppSize.s16)
                                  ]
                                } else ...{
                                  const SizedBox.shrink()
                                },

                                // food section
                                if (data.foods.isNotEmpty) ...{
                                  ListView.builder(
                                    itemCount: data.foods.length,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      final food = data.foods[index];

                                      return SearchedFoodCard(food: food);
                                    },
                                  ),
                                } else ...{
                                  // const Text("No food found")
                                  const Text("")
                                },
                              }
                            ],
                          ),
                        );
                      },
                      searchLoaded: (foods, restaurants, searchNextPage, _) {
                        return SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (restaurants.isEmpty && foods.isEmpty) ...{
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 100,
                                    ),
                                    Icon(
                                      Icons.sticky_note_2_outlined,
                                      size: 58,
                                      color: ColorManager.grey2,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    customText(
                                        "No results found",
                                        ColorManager.grey1,
                                        20,
                                        FontWeight.w800),
                                  ],
                                )
                              } else ...{
                                // restaurant section
                                if (restaurants.isNotEmpty) ...{
                                  ...[
                                    Text("Restaurants",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4
                                            ?.copyWith(
                                                color: ColorManager.textDark,
                                                fontWeight: FontWeight.w600)),
                                    const SizedBox(height: AppSize.s16),
                                    SizedBox(
                                      // color: Colors.black,
                                      height: AppSize.s150,
                                      width: double.infinity,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: restaurants.length,
                                        itemBuilder: (context, index) {
                                          final restaurant = restaurants[index];
                                          return SearchedRestaurantCard(
                                              restaurant: restaurant);
                                        },
                                      ),
                                    ),
                                    const SizedBox(height: AppSize.s16)
                                  ]
                                } else ...{
                                  const SizedBox.shrink()
                                },

                                // food section
                                if (foods.isNotEmpty) ...{
                                  ListView.builder(
                                    itemCount: foods.length,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      final food = foods[index];

                                      return SearchedFoodCard(food: food);
                                    },
                                  )
                                } else ...{
                                  const SizedBox.shrink()
                                }
                              },
                              Visibility(
                                visible: false,
                                child: Center(
                                    child: CircularProgressIndicator(
                                  color: ColorManager.primary,
                                )),
                              )
                            ],
                          ),
                        );
                      },
                      orElse: () {
                        return const SizedBox.shrink();
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
