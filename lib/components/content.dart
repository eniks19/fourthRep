import 'package:flutter/material.dart';
import 'package:travel/components/custom_card.dart';

class MyContent extends StatelessWidget {
  MyContent({super.key});
  final double appBarHeight = AppBar().preferredSize.height;
  final double navBarHeidht = 100;
  final double extendedAppBarHeight = 50;
  final double topCardHeight = 175;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 175,
              width: MediaQuery.of(context).size.width,
              //width: double.infinity,
              child: CutomCard(
                title: 'Natures Light',
                spot: '450 spots',
                img: 'lib/assets/1.jpg',
                icon: Icons.favorite,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: ((MediaQuery.of(context).size.height) -
                          appBarHeight -
                          navBarHeidht -
                          extendedAppBarHeight -
                          topCardHeight) *
                      0.35,
                  width: (MediaQuery.of(context).size.width) * 0.50,
                  child: CutomCard(
                    title: 'Cultural',
                    spot: '257 spots',
                    img: 'lib/assets/2.jpg',
                    icon: Icons.shop,
                  ),
                ),
                Container(
                  height: ((MediaQuery.of(context).size.height) -
                          appBarHeight -
                          navBarHeidht -
                          extendedAppBarHeight -
                          topCardHeight) *
                      0.55,
                  width: (MediaQuery.of(context).size.width) * 0.50,
                  child: CutomCard(
                    title: 'Popularity',
                    spot: '357 spots',
                    img: 'lib/assets/3.jpg',
                    icon: Icons.settings,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: ((MediaQuery.of(context).size.height) -
                          appBarHeight -
                          navBarHeidht -
                          extendedAppBarHeight -
                          topCardHeight) *
                      0.55,
                  width: (MediaQuery.of(context).size.width) * 0.50,
                  child: CutomCard(
                    title: 'Modern Life',
                    spot: '117 spots',
                    img: 'lib/assets/6.jpg',
                    icon: Icons.person,
                  ),
                ),
                Container(
                  height: ((MediaQuery.of(context).size.height) -
                          appBarHeight -
                          navBarHeidht -
                          extendedAppBarHeight -
                          topCardHeight) *
                      0.35,
                  width: (MediaQuery.of(context).size.width) * 0.50,
                  child: CutomCard(
                    title: 'Sun and Sand',
                    spot: '147 spots',
                    img: 'lib/assets/7.jpg',
                    icon: Icons.house,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
