import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/common.dart';

class EmptyFavourites extends StatelessWidget {
  const EmptyFavourites({
    Key? key,
    required this.imageUrl,
    required this.onPressed,
    required this.bodyText,
  }) : super(key: key);
  final String imageUrl;
  final Function() onPressed;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imageUrl,
          height: AppSize.s200,
          width: AppSize.s200,
        ),
        const SizedBox(height: AppSize.s40),
        customText(
            "No favourites saved", ColorManager.textDark, 24, FontWeight.w800),
        const SizedBox(height: AppSize.s10),
        customText(
          bodyText,
          ColorManager.textGrey,
          16.0,
          FontWeight.w600,
        ),
        const SizedBox(height: AppSize.s40),
        SizedBox(
          height: AppSize.s50,
          width: size.width * 0.7,
          child: AppButton(
            label: "Let's find some favourites",
            onPressed: onPressed,
            labelColor: ColorManager.white,
            bgColor: ColorManager.black,
          ),
        )
      ],
    );
  }
}
