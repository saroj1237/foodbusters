import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/bloc/current_position/current_position_cubit.dart';
import 'package:google_fonts/google_fonts.dart';

class BBHomePageAppBar extends StatelessWidget {
  const BBHomePageAppBar({
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
                  "Bhat-Bhateni", ColorManager.white, 20, FontWeight.w800),
            ]),
          );
        }, currentPositionLoaded: (position, address) {
          return Padding(
            padding: const EdgeInsets.only(
                right: AppPadding.p16,
                left: AppPadding.p16,
                top: AppPadding.p16),
            child: Row(
              children: [
                customText(
                    "Bhat-Bhateni", ColorManager.white, 20, FontWeight.w800),
                const SizedBox(width: AppSize.s30),
                Icon(
                  Icons.my_location,
                  size: AppSize.s14,
                  color: ColorManager.white,
                ),
                const SizedBox(width: AppSize.s4),
                Flexible(
                  child: Text(
                    address,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.lato(
                      color: ColorManager.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          );
        }, currentPositionNotLoaded: () {
          return const SizedBox.shrink();
        });
      },
    );
  }
}
