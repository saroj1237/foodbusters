import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bag/domain/entities/bag_entity.dart';

class Charges extends StatelessWidget {
  const Charges({Key? key, required this.bagItem}) : super(key: key);
  final BagItem bagItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p12),
      child: ListView(
        shrinkWrap: true,
        children: [
          // const ChargeItem(
          // chargeType: "Service Charge (10%)", chargeAmount: 58.00),
          // const ChargeItem(chargeType: "Total", chargeAmount: 340.0),
          const ChargeItem(chargeType: "Delivery Charge", chargeAmount: 100.0),
          // const ChargeItem(chargeType: "Sub Total", chargeAmount: 340.0),
          ChargeItem(
              chargeType: "Total",
              chargeAmount: bagItem.totalPrice,
              bold: true),
        ],
      ),
    );
  }
}

class ChargeItem extends StatelessWidget {
  final String chargeType;
  final num chargeAmount;
  final bool? bold;
  const ChargeItem({
    Key? key,
    required this.chargeType,
    required this.chargeAmount,
    this.bold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppMargin.m16),
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          bold != true
              ? customText(
                  chargeType, ColorManager.textDark, 14, FontWeight.w700)
              : customText(
                  chargeType, ColorManager.textDark, 16, FontWeight.w800),
          bold != true
              ? customText("Rs.$chargeAmount", ColorManager.textGrey, 14,
                  FontWeight.w700)
              : customText("Rs.$chargeAmount", ColorManager.textDark, 16,
                  FontWeight.w800),
        ],
      ),
    );
  }
}
