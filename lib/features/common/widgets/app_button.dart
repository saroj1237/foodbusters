import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      required this.label,
      required this.onPressed,
      this.bgColor,
      this.labelColor,
      this.labelChild,
      this.showboth = false,
      this.labelTextSize})
      : super(key: key);
  final String label;
  final bool showboth;
  final Function()? onPressed;
  final Color? bgColor;
  final Color? labelColor;
  final double? labelTextSize;
  final Widget? labelChild;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            bgColor ?? ColorManager.primary,
          ),
          elevation: MaterialStateProperty.all<double>(0.0),
        ),
        onPressed: onPressed,
        child: showboth
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(
                    label,
                    labelColor ?? ColorManager.textDark,
                    labelTextSize ?? 16.0,
                    FontWeight.w800,
                  ),
                  if (labelChild != null) ...{labelChild!}
                  // labelChild ?? const SizedBox.shrink()
                ],
              )
            : labelChild ??
                customText(
                  label,
                  labelColor ?? ColorManager.textDark,
                  labelTextSize ?? 16.0,
                  FontWeight.w800,
                )
        // Text(
        //   label,
        //   style: labelColor == null
        //       ? Theme.of(context).textTheme.headline4
        //       : Theme.of(context)
        //           .textTheme
        //           .headline4
        //           ?.copyWith(color: labelColor),
        // ),
        );
  }
}

class BorderButton extends StatelessWidget {
  const BorderButton(
      {Key? key, required this.label, required this.onPressed, this.bgColor})
      : super(key: key);
  final String label;
  final Function()? onPressed;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            bgColor ?? ColorManager.white,
          ),
          elevation: MaterialStateProperty.all<double>(0.0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s10),
                side: BorderSide(
                  width: 2,
                  color: ColorManager.lightGrey,
                )),
          )),
      onPressed: onPressed,
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
