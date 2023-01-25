import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ResturantCategoryShimmer extends StatelessWidget {
  const ResturantCategoryShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < 5; i++)
              Shimmer.fromColors(
                baseColor: Colors.grey.shade200.withOpacity(0.4),
                highlightColor: Colors.grey.shade200.withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipOval(
                        child: Container(
                          width: 65.0,
                          height: 65.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
