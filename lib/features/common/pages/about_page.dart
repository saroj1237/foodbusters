import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Us")),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppPadding.p16,
          AppPadding.p30,
          AppPadding.p16,
          AppPadding.p16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                "About us",
                ColorManager.textDark,
                24,
                FontWeight.w700,
              ),
              const SizedBox(height: AppSize.s30),
              Text(
                "Whether you are craving for hot momos, spicy Newari cuisine or hosting a pizza party or indulge yourself in 5 Star Hotel Cosines, Food Busters will deliver food from top restaurants to your doorstep at no time. We are providing our delivery services in Kathmandu, Lalitpur and Bhaktapur region",
                style: GoogleFonts.lato(
                  color: ColorManager.textDark,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: AppSize.s30),
              Container(
                padding: const EdgeInsets.all(AppPadding.p20),
                decoration: BoxDecoration(
                  color: ColorManager.profileBg,
                  borderRadius: BorderRadius.circular(AppSize.s10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(ImageAsset.logo),
                        const SizedBox(width: AppSize.s20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText("Food Busters Pvt. Ltd.",
                                ColorManager.textDark, 20.0, FontWeight.w700),
                            const SizedBox(height: AppSize.s8),
                            // const Text("BBSM Building, WTC, Kathmandu"),
                            customText("BBSM Building, WTC, Kathmandu",
                                ColorManager.textDark, 14.0, FontWeight.w500),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: AppSize.s20),
                    customText("01-5907863 (Restaurant)", ColorManager.textDark,
                        14.0, FontWeight.w500),
                    customText("01-5907863 (Bhat Bhateni)",
                        ColorManager.textDark, 14.0, FontWeight.w500),
                    const SizedBox(height: AppSize.s16),
                    customText("info@foodbusters.com.np", ColorManager.textDark,
                        14.0, FontWeight.w500),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
