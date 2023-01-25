import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DealsAndOfferShimmer extends StatelessWidget {
  const DealsAndOfferShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
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
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.width / 2.5,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Shimmer.fromColors(
                            baseColor: Colors.grey.shade200.withOpacity(0.4),
                            highlightColor:
                                Colors.grey.shade200.withOpacity(0.2),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 8,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Shimmer.fromColors(
                            baseColor: Colors.grey.shade200.withOpacity(0.4),
                            highlightColor:
                                Colors.grey.shade200.withOpacity(0.2),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 5,
                              height: 8,
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
        ],
      ),
    );
  }
}
