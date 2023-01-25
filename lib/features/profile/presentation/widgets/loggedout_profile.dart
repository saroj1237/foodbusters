import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:foodbusters/features/profile/presentation/pages/profile_page.dart';
import 'package:go_router/go_router.dart';

class LoggedOutProfileUI extends StatelessWidget {
  const LoggedOutProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(AppPadding.p16),
          decoration: BoxDecoration(
            color: ColorManager.skyBlue05,
            borderRadius: BorderRadius.circular(AppSize.s10),
          ),
          child: Row(
            children: [
              Flexible(
                child: customText(
                    'Login or Signup to view your complete profile',
                    ColorManager.textDark,
                    14,
                    FontWeightManager.regular),
              ),
              SizedBox(
                height: AppSize.s45,
                child: AppButton(
                  label: "Login/Signup",
                  onPressed: () {
                    context.push(AppRoutes.loginPage);
                  },
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: AppSize.s20),
        Container(
          padding: const EdgeInsets.all(AppPadding.p16),
          decoration: BoxDecoration(
            color: ColorManager.white,
            border: Border.all(
              color: ColorManager.profileBg,
              width: AppSize.s2,
            ),
            borderRadius: BorderRadius.circular(AppSize.s10),
          ),
          child: Column(
            children: [
              for (ProfilePageTileModel tile in profilePageTiles) ...[
                if (tile.showAlways) ...{
                  ListTile(
                    tileColor: ColorManager.white,
                    contentPadding: EdgeInsets.zero,
                    onTap: () {
                      tile.onPressed(context);
                    },
                    leading: tile.prefix,
                    title: Transform.translate(
                        offset: const Offset(-10, 0),
                        child: customText(tile.label, ColorManager.textDark, 16,
                            FontWeight.w600,
                            lineHeight: 1.8)),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: AppSize.s16,
                      color: Color(0xFFE0E0E0),
                    ),
                  ),
                  tile.showDivider == true
                      ? const Divider()
                      : const SizedBox.shrink()
                }
              ]
            ],
          ),
        ),
        const SizedBox(height: AppSize.s30),
        customText(
          "App Version 1.486.59",
          ColorManager.textGrey,
          12.0,
          FontWeight.w400,
        ),
        const SizedBox(height: AppSize.s100),
      ],
    );
  }
}
