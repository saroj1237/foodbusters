import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/assets_manager.dart';
import 'package:foodbusters/core/resources/color_manager.dart';

class CustomCachedImage extends StatelessWidget {
  final double? height;
  final double? width;
  final String imageUrl;
  final BoxFit? fit;
  final Alignment? alignment;

  const CustomCachedImage({
    Key? key,
    this.height,
    this.width,
    required this.imageUrl,
    this.fit,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      fit: fit,
      imageUrl: imageUrl,
      alignment: alignment ?? Alignment.center,
      errorWidget: (context, url, error) {
        return Image.asset(
          ImageAsset.food3,
          fit: BoxFit.cover,
        );
      },
      placeholder: (context, url) => Center(
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: ColorManager.grey,
          backgroundColor: ColorManager.lightGrey,
        ),
      ),
    );
  }
}
