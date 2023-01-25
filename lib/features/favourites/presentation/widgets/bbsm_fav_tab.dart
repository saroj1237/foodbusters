import 'package:flutter/cupertino.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/favourites/presentation/widgets/empty_widget.dart';
import 'package:go_router/go_router.dart';

class BBSMFavouriteTab extends StatelessWidget {
  const BBSMFavouriteTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EmptyFavourites(
      imageUrl: ImageAsset.emptyFavBbsm,
      onPressed: () {
        // context
        //     .read<BottomNavCubit>()
        //     .changeBottomNavIndex(0, BottomNavType.bhatBhateni);
        // context.push(AppRoutes.bbLandingPage);
        context.pop();
      },
      bodyText: "Once you favorite a Bhat-Bhateni, it will appear here.",
    );
  }
}
