import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/profile/domain/entities/profile_entities.dart';
import 'package:foodbusters/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:foodbusters/features/profile/presentation/pages/profile_page.dart';
import 'package:go_router/go_router.dart';

class LoggedinProfileUI extends StatelessWidget {
  const LoggedinProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return state.maybeWhen(
          profileLoading: () {
            return const Center(child: CircularProgressIndicator());
          },
          getProfileInfoFailure: (error) {
            return Center(
              child: Text(error),
            );
          },
          getProfileInfoSuccess: (userModel) {
            return _buildProfileLoaded(userModel, context);
          },
          updateProfileSuccess: (userModel) {
            return _buildProfileLoaded(userModel, context);
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget _buildProfileLoaded(UserModel userModel, BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // profile header
          GestureDetector(
            onTap: () {
              context.push(AppRoutes.editProfilePage, extra: userModel);
            },
            child: Container(
              padding: const EdgeInsets.all(AppPadding.p16),
              decoration: BoxDecoration(
                color: ColorManager.skyBlue05,
                borderRadius: BorderRadius.circular(AppSize.s10),
              ),
              child: Row(
                children: [
                  ClipOval(
                    child: CustomCachedImage(
                      imageUrl: userModel.image ?? '',
                      height: 48,
                      width: 48,
                    ),
                  ),
                  const SizedBox(width: AppSize.s20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userModel.fullName ?? ''),
                      const SizedBox(height: AppSize.s5),
                      Text(userModel.phone ?? ''),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    "Edit Profile",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 23),
          // options list

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
                  ListTile(
                    tileColor: ColorManager.white,
                    contentPadding: EdgeInsets.zero,
                    onTap: () {
                      tile.onPressed(context);
                    },
                    leading: tile.prefix,
                    title: Transform.translate(
                        offset: const Offset(-10, 0),
                        child: customText(tile.label, ColorManager.textDark,
                            16.0, FontWeight.w600)),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: AppSize.s16,
                      color: Color(0xFFE0E0E0),
                    ),
                  ),
                  tile.showDivider == true
                      ? const Divider()
                      : const SizedBox.shrink()
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
      ),
    );
  }
}
