import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';
import 'package:foodbusters/features/bhat_bhateni/categories/domain/entities/bb_category_entity.dart';
import 'package:go_router/go_router.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
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
        decoration: BoxDecoration(
          color: ColorManager.bbCategoryBg,
          borderRadius: BorderRadius.circular(AppSize.s10),
        ),
        padding: const EdgeInsets.all(AppPadding.p10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SvgPicture.network(
            //   category.images![0],
            //   height: 50,
            //   width: 50,
            //   placeholderBuilder: (context) {
            //     return Image.asset(ImageAsset.food3);
            //   },
            // ),
            CustomCachedImage(
              imageUrl: category.images![0],
              height: 50,
              width: 50,
            ),
            const SizedBox(height: AppSize.s10),
            Expanded(
              child: customText(
                category.name,
                ColorManager.textGrey,
                12,
                FontWeight.w600,
                textAlign: TextAlign.center,
                maxLines: 2,
                textOverflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
