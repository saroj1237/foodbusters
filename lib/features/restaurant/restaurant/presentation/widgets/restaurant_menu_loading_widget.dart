import 'package:flutter/material.dart';
import 'package:foodbusters/core/resources/values_manager.dart';
import 'package:shimmer/shimmer.dart';

class RestaurantMenuLoadingWidget extends StatelessWidget {
  const RestaurantMenuLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            for (int i = 0; i < 7; i++)
              Shimmer.fromColors(
                baseColor: Colors.grey.shade200.withOpacity(0.4),
                highlightColor: Colors.grey.shade200.withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 80.0,
                              height: 8.0,
                              color: Colors.white,
                            ),
                            const SizedBox(height: AppSize.s8),
                            Container(
                              width: 40.0,
                              height: 8.0,
                              color: Colors.white,
                            ),
                            const SizedBox(height: AppSize.s8),
                            Container(
                              width: 80.0,
                              height: 8.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: AppSize.s90,
                        width: AppSize.s130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
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
