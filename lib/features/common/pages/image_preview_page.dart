import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/resources.dart';

class ImagePreviewPage extends StatefulWidget {
  const ImagePreviewPage({Key? key, required this.images}) : super(key: key);
  final List<String> images;

  @override
  State<ImagePreviewPage> createState() => _ImagePreviewPageState();
}

class _ImagePreviewPageState extends State<ImagePreviewPage> {
  late PageController controller;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorManager.white),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: AppSize.s100),
            Container(
              height: size.height * 0.5,
              width: double.infinity,
              alignment: Alignment.center,
              child: PageView.builder(
                itemCount: widget.images.length,
                controller: controller,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index) {},
                itemBuilder: (context, index) {
                  final image = widget.images[index];
                  return InteractiveViewer(
                      panEnabled: false,
                      boundaryMargin: const EdgeInsets.all(100),
                      minScale: 0.5,
                      maxScale: 2,
                      child: CustomCachedImage(
                        imageUrl: image,
                        fit: BoxFit.cover,
                      ));
                },
              ),
            ),
            const SizedBox(height: AppSize.s10),
            Container(
              height: AppSize.s100,
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
              child: ListView.builder(
                itemCount: widget.images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final image = widget.images[index];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(AppSize.s10),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ColorManager.lightGrey,
                        ),
                        borderRadius: BorderRadius.circular(AppSize.s10),
                      ),
                      height: AppSize.s100,
                      width: AppSize.s100,
                      child: CustomCachedImage(
                        imageUrl: image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
