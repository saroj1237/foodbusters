import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        const SizedBox(height: 10),
        Container(
          height: 250,
          width: double.infinity,
          color: Colors.red,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Row(
              children: [
                SvgPicture.asset('assets/all_store.svg'),
                const SizedBox(width: 10),
                Text(
                  "All Stores",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/deals.svg',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Deals and Offers",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/feature_rest.svg',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Feature Resturants",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/new_pat.svg',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "New partners",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/restrunts.svg',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "Resturants",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            )
          ]),
        )
      ]),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }

  @override
  Path getClip(Size size) {
    Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width / 2, size.height - 20)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }
}
