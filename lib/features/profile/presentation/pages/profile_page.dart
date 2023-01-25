import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/helpers/app_dialogs.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/address_settings/presentataion/bloc/address_bloc.dart';
import 'package:foodbusters/features/common/bloc/auth/auth_cubit.dart';
import 'package:foodbusters/features/common/bloc/bottom_nav_cubit.dart';
import 'package:foodbusters/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:foodbusters/features/profile/presentation/widgets/loggedin_profile.dart';
import 'package:foodbusters/features/profile/presentation/widgets/loggedout_profile.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    context.read<AuthCubit>().checkAuthState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          IconButton(
            splashColor: ColorManager.transparent,
            onPressed: () {
              context.push(AppRoutes.searchPage);
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppPadding.p16),
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return state.when(
              initial: () {
                return const Center(child: CircularProgressIndicator());
              },
              unAuthenticated: () {
                return const LoggedOutProfileUI();
              },
              authenticated: () {
                context.read<ProfileBloc>().add(const GetProfileInfo());
                return const LoggedinProfileUI();
              },
            );
          },
        ),
      ),
    );
  }
}

List<ProfilePageTileModel> profilePageTiles = [
  ProfilePageTileModel(
    label: "My Orders",
    prefix: Icon(
      Icons.assignment,
      size: 20,
      color: ColorManager.black,
    ),
    onPressed: (context) {
      context.push(AppRoutes.orderlistPage);
    },
    showAlways: false,
  ),
  ProfilePageTileModel(
    label: "Password",
    prefix: Icon(
      (Icons.lock),
      color: ColorManager.black,
      size: 20,
    ),
    onPressed: (context) {
      context.push(AppRoutes.changePasswordPage);
    },
    showAlways: false,
  ),
  ProfilePageTileModel(
    label: "My Favourites",
    prefix: Icon(
      Icons.favorite,
      color: ColorManager.black,
      size: 20,
    ),
    onPressed: (context) {
      context.push(AppRoutes.favouritePage);
    },
    showAlways: false,
  ),
  ProfilePageTileModel(
    label: "Manage Address",
    prefix: SvgPicture.asset(
      ImageAsset.address,
      color: ColorManager.black,
      height: AppSize.s18,
      width: AppSize.s18,
    ),
    onPressed: (context) {
      context.read<AddressBloc>().add(const GetAddress());
      context.push(AppRoutes.addressListPagePage);
    },
    showAlways: false,
    showDivider: true,
  ),
  ProfilePageTileModel(
    label: "Feedback",
    prefix: Icon(
      Icons.message,
      color: ColorManager.black,
      size: 20,
    ),
    onPressed: (context) {
      context.push(AppRoutes.feedbackPage);
    },
    showAlways: false,
  ),
  ProfilePageTileModel(
    label: "FAQs",
    prefix: Icon(
      Icons.help,
      color: ColorManager.black,
      size: 22,
    ),
    onPressed: (context) {
      context.push(AppRoutes.faqsPage);
    },
    showAlways: true,
  ),
  ProfilePageTileModel(
    label: "About Foodbusters",
    prefix: SvgPicture.asset(ImageAsset.logoIcon),
    onPressed: (context) {
      context.push(AppRoutes.aboutPage);
    },
    showAlways: true,
  ),
  ProfilePageTileModel(
    label: "Share Foodbusters",
    prefix: Icon(
      Icons.share,
      size: 20,
      color: ColorManager.black,
    ),
    onPressed: (context) async {
      Share.share('https://play.google.com/store/apps/details?id=com.eydean.foodbusters',
          subject: 'Order your food now.');
    },
    showAlways: true,
  ),
  ProfilePageTileModel(
    label: "Logout",
    prefix: Icon(
      Icons.logout,
      color: ColorManager.black,
      size: AppSize.s20,
    ),
    onPressed: (context) async {
      showConfirmDialog(context,
          title: "Log out?",
          desctiption: "Are you sure you want to logout?", onConfirm: () {
        context.read<AuthCubit>().logout();

        context
            .read<BottomNavCubit>()
            .changeBottomNavIndex(0, BottomNavType.foodbusters);
        debugPrint("logged out");
      });
    },
    showAlways: false,
  )
];

class ProfilePageTileModel {
  final String label;
  final Widget prefix;
  final Function(BuildContext context) onPressed;
  final bool showAlways; // tile be shown when the user is loggedout also :)

  final bool? showDivider;

  ProfilePageTileModel({
    required this.label,
    required this.prefix,
    required this.onPressed,
    required this.showAlways,
    this.showDivider = false,
  });
}
