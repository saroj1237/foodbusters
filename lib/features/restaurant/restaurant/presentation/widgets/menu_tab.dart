import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/restaurant_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/bloc/restaurant_menu/restaurant_menu_bloc.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/widgets/menu_item_widget.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/widgets/restaurant_menu_loading_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/helpers/app_dialogs.dart';
import '../../../new_partners/domain/entities/entiry.dart';

class MenuTab extends StatefulWidget {
  const MenuTab({Key? key, this.offerFood, this.resId}) : super(key: key);
  final Food? offerFood;
  final String? resId;
  @override
  State<MenuTab> createState() => _MenuTabState();
}

class _MenuTabState extends State<MenuTab> {
  bool isMenuSelected = false;
  String selectedMenu = "Browse Menu";
  //for pagination
  int pageIndex = 1;
  final _scrollController = ScrollController();
  bool hasReachedMax = false;
  bool loaderVisibiliy = false;
  String? resId = "";

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isBottom) {
      if (!hasReachedMax) {
        loaderVisibiliy = true;
        pageIndex += 1;
        context
            .read<RestaurantMenuBloc>()
            .add(GetRestaurantMenuNextPage("${widget.resId}?page=$pageIndex"));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RestaurantMenuBloc, RestaurantMenuState>(
        listener: (context, state) {
          state.maybeWhen(
            getRestaurantMenuLoaded: (menu) {
              if (widget.offerFood != null) {
                showFoodModalSheet(context, widget.offerFood!, setState);
              }
            },
            getRestaurantMenuReachedMax: (max, data) {
              setState(() {
                hasReachedMax = max;
              });
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            getRestaurantMenuLoading: () {
              return const Center(
                child: RestaurantMenuLoadingWidget(),
              );
            },
            getRestaurantMenuLoaded: (menu) {
              return menu.isNotEmpty
                  ? ListView.builder(
                      itemCount: menu.length,
                      controller: _scrollController,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        final menuItem = menu[index];
                        return MenuItemWidget(
                          menu: menuItem,
                        );
                      },
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(child: SvgPicture.asset(ImageAsset.emptyItems)),
                        const SizedBox(
                          height: 16,
                        ),
                        customText("Menu unavailable", ColorManager.textDark,
                            20, FontWeight.w800),
                      ],
                    );
            },
            getRestaurantMenuReachedMax: (max, data) {
              return Scaffold(
                body: RefreshIndicator(
                  onRefresh: () async {
                    // context
                    //     .read<RestaurantBloc>()
                    //     .add(GetRestaurantDetail(restaurantDetail!.id));
                  },
                  child: ListView.builder(
                    itemCount: data.length,
                    shrinkWrap: true,
                    controller: _scrollController,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      final menuItem = data[index];
                      return MenuItemWidget(
                        menu: menuItem,
                      );
                    },
                  ),
                ),
              );
            },
            getRestaurantMenuError: (msg) {
              return const Center(
                child: Text("Error Occured"),
              );
            },
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        },
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 16),
        child: Visibility(
          visible: false,
          child: FloatingActionButton.extended(
              backgroundColor: Colors.black,
              onPressed: () {
                Dialog errorDialog = menuDialog(context);
                showDialog(
                    context: context,
                    builder: (BuildContext context) => errorDialog);
              },
              label: Text(
                selectedMenu,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: isMenuSelected
                        ? ColorManager.primary
                        : ColorManager.white),
              ),
              icon: isMenuSelected
                  ? Icon(
                      Icons.filter_alt_outlined,
                      color: ColorManager.primary,
                      size: 14,
                    )
                  : Icon(
                      Icons.local_dining_rounded,
                      color: ColorManager.white,
                      size: 14,
                    )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Dialog menuDialog(BuildContext context) {
    return Dialog(
      backgroundColor: ColorManager.black,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        padding: const EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width / 1.2,
        child: Wrap(
          alignment: WrapAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                      child: customText(
                          "Menu", ColorManager.white, 20, FontWeight.w800)),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          isMenuSelected = false;
                          selectedMenu = "Browse Menu";
                        });
                        Navigator.pop(context);
                      },
                      child: customText(
                          "Clear", ColorManager.error, 20, FontWeight.w800)),
                ],
              ),
            ),
            Divider(color: ColorManager.grey),
            BlocBuilder<RestaurantBloc, RestaurantState>(
              builder: (context, state) {
                return state.maybeWhen(
                  getRestaurantListLoading: () {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  getRestaurantListSuccess:
                      (restarants, menu, restaurantDetail) {
                    return menu != null && menu.isNotEmpty
                        ? SizedBox(
                            height: MediaQuery.of(context).size.height / 2.5,
                            child: ListView.builder(
                              itemCount: menu.length,
                              primary: true,
                              padding: EdgeInsets.zero,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isMenuSelected = true;
                                      selectedMenu = menu[index].title;
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text(menu[index].title,
                                              style: TextStyle(
                                                  color: (selectedMenu ==
                                                          menu[index].title)
                                                      ? ColorManager.primary
                                                      : ColorManager.white)),
                                        ),
                                        Text(
                                            menu[index].foods.length.toString(),
                                            style: TextStyle(
                                                color: ColorManager.white))
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        : const Center(
                            child: Text("No menu"),
                          );
                  },
                  getRestaurantListFailure: () {
                    return const Center(
                      child: Text("Error Occured"),
                    );
                  },
                  orElse: () {
                    return Container();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
