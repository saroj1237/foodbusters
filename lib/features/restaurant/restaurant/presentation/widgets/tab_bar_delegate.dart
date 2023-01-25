import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/restaurant/restaurant/presentation/pages/search_rest_menu_page.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarDelegate extends SliverPersistentHeaderDelegate {
  TabBarDelegate(this.tabBar, this.restaurntId);
  final TabBar tabBar;
  final String restaurntId;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: ColorManager.white,
      child: Column(
        children: [
          tabBar,
          Padding(
            padding: const EdgeInsets.fromLTRB(
                AppPadding.p16, AppPadding.p12, AppPadding.p16, AppPadding.p12),
            child: TextField(
              readOnly: true,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SearchRestMenuPage(
                              restaurantId: restaurntId,
                            )));
              },
              decoration: InputDecoration(
                fillColor: ColorManager.grey4,
                filled: true,
                contentPadding: const EdgeInsets.all(10),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorManager.transparent,
                    ),
                    borderRadius: BorderRadius.circular(AppSize.s10)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    borderRadius: BorderRadius.circular(AppSize.s10)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorManager.errorOpacity50,
                    ),
                    borderRadius: BorderRadius.circular(AppSize.s10)),
                focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ColorManager.errorOpacity50,
                    ),
                    borderRadius: BorderRadius.circular(AppSize.s10)),
                hintText: "Search Food",
                hintStyle: GoogleFonts.lato(
                    color: ColorManager.grey3,
                    fontWeight: FontWeight.w500,
                    fontSize: FontSize.s16),
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorManager.grey3,
                  size: 25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  double get maxExtent => 120;

  @override
  double get minExtent => 120;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
