import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialInstruction extends StatelessWidget {
  const SpecialInstruction({
    Key? key,
    required TextEditingController specialInstructionController,
  })  : _specialInstructionController = specialInstructionController,
        super(key: key);

  final TextEditingController _specialInstructionController;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppSize.s10),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(AppPadding.p16),
            color: ColorManager.black,
            child: customText(
              "Special Instruction",
              ColorManager.white,
              20.0,
              FontWeight.w800,
            ),
          ),
          Stack(children: [
            Positioned.fill(
                child: Container(
              color: ColorManager.black,
            )),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(AppPadding.p16),
              decoration: BoxDecoration(
                  color: ColorManager.profileBg,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(AppSize.s10),
                  )),
              child: TextField(
                controller: _specialInstructionController,
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: ColorManager.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSize.s10),
                      borderSide: BorderSide(color: ColorManager.lightGrey1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSize.s10),
                      borderSide: BorderSide(color: ColorManager.lightGrey1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSize.s10),
                      borderSide: BorderSide(color: ColorManager.lightGrey1),
                    ),
                    hintText:
                        "Let us know if there is other information about the order",
                    hintStyle: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.grey3,
                    )),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
