import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/restaurant/restaurant/domain/entities/entity.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/menu_search_cubit/menu_search_cubit.dart';
import 'package:foodbusters/features/search/presentation/widgets/searched_food_card.dart';
import 'package:foodbusters/features/search/presentation/widgets/shimmer_loading.dart';

import '../../../../search/presentation/search_bloc/search_bloc.dart';

class SearchRestMenuPage extends StatefulWidget {
  const SearchRestMenuPage({Key? key, required this.restaurantId})
      : super(key: key);
  final String restaurantId;

  @override
  SearchRestMenuPageState createState() => SearchRestMenuPageState();
}

class SearchRestMenuPageState extends State<SearchRestMenuPage> {
  late List<Food> allFoods;
  Timer? _debounce;
  String searchText = "";
  bool isSearched = false;
  int pageIndex = 1;
  final _scrollController = ScrollController();
  bool hasReachedMax = false;
  bool loaderVisibiliy = false;

  @override
  void initState() {
    super.initState();
  }

  onSearch(String query) {
    if (query.isEmpty) {
      context.read<SearchBloc>().add(const ResetState());
      setState(() {
        isSearched = false;
        searchText = "";
      });
    } else {
      setState(() {
        isSearched = true;
        searchText = query;
      });
    }

    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      // do something with query
      if (query.length <= 2) return;
      String finalQuery = "${widget.restaurantId}?query=$query";
      debugPrint("final query = $finalQuery");
      context.read<MenuSearchCubit>().searchMenu(finalQuery);
    });
  }

  @override
  void dispose() {
    super.dispose();

    _debounce?.cancel();
  }

  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  searchText = "";
                  isSearched = false;
                });
              },
              icon: searchText.isEmpty
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
              hintText: "Search items",
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
            Padding(
              padding: const EdgeInsets.all(AppPadding.p16),
              child: BlocBuilder<MenuSearchCubit, MenuSearchState>(
                builder: (context, state) {
                  return state.when(
                    menuSearchLoading: () {
                      return const SearchLoadingWidget();
                    },
                    menuSearchFailure: (error) {
                      return Center(child: Text(error));
                    },
                    menuSearchLoaded: (data) {
                      return SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (data.isEmpty) ...{
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
                                  customText("No results found",
                                      ColorManager.grey1, 20, FontWeight.w800),
                                ],
                              )
                            } else ...{
                              // restaurant section

                              // food section
                              if (data.isNotEmpty) ...{
                                ListView.builder(
                                  itemCount: data.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    final food = data[index];

                                    return SearchedFoodCard(food: food);
                                  },
                                )
                              } else ...{
                                // const Text("No food found")
                                const Text("")
                              }
                            }
                          ],
                        ),
                      );
                    },
                    initial: () {
                      return const Center(child: Text("Seach for foods"));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
