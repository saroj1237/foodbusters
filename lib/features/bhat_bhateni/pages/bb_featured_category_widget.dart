import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:go_router/go_router.dart';

class BBFeaturedCategoryWidget extends StatelessWidget {
  const BBFeaturedCategoryWidget({
    Key? key,
    required this.category,
  }) : super(key: key);

  final BBCategory category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRoutes.bbSubCategoryPage, extra: category);
      },
      child: Container(
        width: 140,
        height: double.maxFinite,
        margin: const EdgeInsets.only(right: AppMargin.m10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: CustomCachedImage(
                imageUrl: category.images![0],
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: customText(category.name, ColorManager.textDark, 14,
                      FontWeight.w700),
                )),
          ],
        ),
      ),
    );
  }
}
