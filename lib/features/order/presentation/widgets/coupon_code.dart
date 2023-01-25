import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbusters/core/helpers/input_validators.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/common/common.dart';
import 'package:foodbusters/features/order/presentation/bloc/coupon/coupon_cubit.dart';
import 'package:foodbusters/features/order/presentation/pages/checkout_page.dart';

import '../../domain/entities/order_entity.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    Key? key,
    required GlobalKey<FormState> couponForm,
    required TextEditingController couponCodeController,
    required this.widget,
  })  : _couponForm = couponForm,
        _couponCodeController = couponCodeController,
        super(key: key);

  final GlobalKey<FormState> _couponForm;
  final TextEditingController _couponCodeController;
  final CheckoutPage widget;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _couponForm,
      child: Container(
        // color: Colors.red,
        padding: const EdgeInsets.symmetric(
            vertical: AppPadding.p10, horizontal: AppPadding.p8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextFormField(
                controller: _couponCodeController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: InputValidators.commonValidation,
                decoration: InputDecoration(
                  fillColor: ColorManager.white,
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorManager.grey3),
                      borderRadius: BorderRadius.circular(AppSize.s10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black.withOpacity(0.12),
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
                  hintText: "Coupon Code",
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const SizedBox(width: AppSize.s10),
            SizedBox(
              height: AppSize.s50,
              child: AppButton(
                label: "Apply",
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  if (!_couponForm.currentState!.validate()) {
                    return;
                  }
                  context.read<CouponCubit>().applyCoupon(CouponCodeReq(
                      price: widget.bagItem.totalPrice,
                      couponCode: _couponCodeController.text,
                      type: 'restaurant',
                      restaurantId: widget.bagItem.restaurantId));
                },
                labelColor: ColorManager.white,
                bgColor: ColorManager.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
