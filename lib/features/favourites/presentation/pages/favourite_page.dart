import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/favourites/presentation/widgets/bbsm_fav_tab.dart';
import 'package:foodbusters/features/favourites/presentation/widgets/restaurant_fav_tab.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: 0,
    );

    _tabController.addListener(() {
      if (_tabController.offset > 0.5) {
        debugPrint('changing right ');
      } else if (_tabController.offset < -0.5) {
        debugPrint('changing left ');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            _tabController.index == 0 ? null : ColorManager.bbPrimary,
        title: Text(
          "Favourites",
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                color: _tabController.index == 0 ? null : ColorManager.white,
              ),
        ),
        iconTheme: Theme.of(context).appBarTheme.iconTheme?.copyWith(
              color: _tabController.index == 0 ? null : ColorManager.white,
            ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: ColorManager.black,
          tabs: [
            Padding(
              padding: const EdgeInsets.only(bottom: AppPadding.p16),
              child: customText(
                  "Restaurants",
                  _tabController.index == 0
                      ? ColorManager.textDark
                      : ColorManager.white,
                  16.0,
                  FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: AppPadding.p16),
              child: customText(
                  "Bhat-Bhateni",
                  _tabController.index == 0
                      ? ColorManager.textDark
                      : ColorManager.white,
                  16.0,
                  FontWeight.w700),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          RestaurantFavouriteTab(),
          BBSMFavouriteTab(),
        ],
      ),
    );
  }
}
