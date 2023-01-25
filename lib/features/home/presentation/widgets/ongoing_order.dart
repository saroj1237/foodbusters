import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/order/domain/entities/bb_order_entity.dart';

class OngoingOrder extends StatelessWidget {
  final PendingOrdersInfo? pendingOrdersInfo;
  const OngoingOrder({
    Key? key,
    required this.pendingOrdersInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: 80,
      decoration: BoxDecoration(
          color: ColorManager.primaryLight,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                  "Ongoing Order", ColorManager.textDark, 14, FontWeight.w700),
              const SizedBox(height: AppSize.s10),
              SizedBox(
                  width: 100,
                  child: LinearProgressIndicator(
                    minHeight: 3,
                    color: ColorManager.skyBlue,
                    backgroundColor: ColorManager.skyBluelight,
                    value: 0.5,
                  ))
            ],
          ),
          const Spacer(),
          pendingOrdersInfo!.count >= 1
              ? Container(
                  padding: const EdgeInsets.fromLTRB(16, 8, 70, 8),
                  decoration: BoxDecoration(
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [
                      customText("${pendingOrdersInfo!.count}  Restaurants",
                          ColorManager.textDark, 10, FontWeight.w600,
                          textScaleFactor: 1.0),
                      const SizedBox(width: 8),
                      Stack(
                        children: [
                          for (var i = 0;
                              i < pendingOrdersInfo!.restImg.length;
                              i++)
                            i > 4
                                ? const SizedBox.shrink()
                                : Transform.translate(
                                    offset: i == 0
                                        ? const Offset(0, 0)
                                        : Offset(32 * i - i * 16, 0.0),
                                    child: Container(
                                      height: 32,
                                      width: 32,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: i < 4 ? null : ColorManager.grey,
                                        border: Border.all(
                                          width: 2,
                                          color: ColorManager.white,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      child: ClipOval(
                                          child: SizedBox(
                                              height: 32,
                                              width: 32,
                                              child: i < 4
                                                  ? CustomCachedImage(
                                                      imageUrl:
                                                          pendingOrdersInfo!
                                                              .restImg[0],
                                                      fit: BoxFit.cover,
                                                    )
                                                  : Icon(
                                                      Icons.add,
                                                      color: ColorManager.white,
                                                    ))),
                                    ),
                                  ),
                        ],
                      )
                    ],
                  ),
                )
              : Container(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        ImageAsset.mopedIcon,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: AppSize.s8,
                      ),
                      customText("Order being verified", ColorManager.textDark,
                          14, FontWeight.w700),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
