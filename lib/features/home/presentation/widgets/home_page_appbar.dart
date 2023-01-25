import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/bloc/current_position/current_position_cubit.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentPositionCubit, CurrentPositionState>(
      builder: (context, state) {
        return state.when(initial: () {
          return Padding(
            padding: const EdgeInsets.only(
                right: AppPadding.p16,
                left: AppPadding.p16,
                top: AppPadding.p16),
            child: Row(children: [
              customText(
                  "Foodbusters", ColorManager.black, 20, FontWeight.w800),
            ]),
          );
        }, currentPositionLoaded: (position, address) {
          return Padding(
            padding: const EdgeInsets.only(
                right: AppPadding.p16,
                left: AppPadding.p16,
                top: AppPadding.p16),
            child: InkWell(
              onTap: () {},
              child: Row(
                children: [
                  customText(
                      "Foodbusters", ColorManager.black, 20, FontWeight.w800),
                  const SizedBox(width: AppSize.s30),
                  Icon(
                    Icons.my_location,
                    size: AppSize.s14,
                    color: ColorManager.black,
                  ),
                  const SizedBox(width: AppSize.s4),
                  Flexible(
                    child: Text(
                      address,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.lato(
                        color: ColorManager.black,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }, currentPositionNotLoaded: () {
          return const SizedBox.shrink();
        });
      },

      // bottom:
      //     // visible
      //     //     ?
      //     PreferredSize(
      //   preferredSize: const Size(double.infinity, AppSize.s60),
      //   child: AnimatedOpacity(
      //     // opacity: visible ? 1.0 : 0.0,
      //     opacity: 1,
      //     duration: const Duration(milliseconds: 500),
      //     child: Padding(
      //       padding: const EdgeInsets.only(
      //         right: AppPadding.p20,
      //         left: AppPadding.p20,
      //         top: AppPadding.p8,
      //         bottom: AppPadding.p16,
      //       ),
      //       child: Row(
      //         children: [
      //           Expanded(
      //             child: TextField(
      //               readOnly: true,
      //               onTap: () {
      //                 context.push(AppRoutes.searchPage);
      //               },
      //               decoration: InputDecoration(
      //                 fillColor: ColorManager.white,
      //                 suffixIcon: Container(
      //                   padding: const EdgeInsets.all(AppSize.s14),
      //                   child: SvgPicture.asset(ImageAsset.searchIcon),
      //                 ),
      //                 hintText: "Search food and restaurant",
      //                 hintStyle: GoogleFonts.lato(
      //                     fontSize: 16,
      //                     color: ColorManager.hintColor,
      //                     fontWeight: FontWeight.w500),
      //                 filled: true,
      //                 isDense: true,
      //                 contentPadding: const EdgeInsets.symmetric(
      //                   horizontal: AppPadding.p12,
      //                   vertical: AppPadding.p16,
      //                 ),
      //                 enabledBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(AppSize.s10),
      //                   borderSide: BorderSide(
      //                       color: ColorManager.transparent,
      //                       width: AppSize.s1_5),
      //                 ),
      //                 focusedBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(AppSize.s10),
      //                   borderSide: BorderSide(
      //                       color: ColorManager.transparent,
      //                       width: AppSize.s1_5),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           // const SizedBox(width: AppSize.s16),
      //           // SizedBox(
      //           //   height: AppSize.s28,
      //           //   width: AppSize.s28,
      //           //   // splashColor: ColorManager.lightGrey,
      //           //   // padding: EdgeInsets.zero,
      //           //   // constraints: const BoxConstraints(),
      //           //   // onPressed: () {},
      //           //   child: SvgPicture.asset(
      //           //     ImageAsset.bbOffer,
      //           //     fit: BoxFit.fill,
      //           //   ),
      //           // ),
      //         ],
      //       ),
      //     ),
      //   ),
      // )
      // : null,
    );
  }
}
