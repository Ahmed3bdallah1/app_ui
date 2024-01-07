import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../animations/fade_in_animation.dart';
import 'buttons.dart';

Widget buildHomeButtons(BuildContext context) {
  return SizedBox(
    height: 90,
    width: MediaQuery.of(context).size.width,
    child: ListView(scrollDirection: Axis.horizontal, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FadeInAnimation(
            delay: 1,
            fadeOffset: 60,
            direction: FadeInDirection.leftToRight,
            child: HomeButton(
              label: "Transfer",
              iconData: IconlyBold.swap,
              color: Colors.teal,
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 5),
          FadeInAnimation(
            delay: 2.4,
            fadeOffset: 220,
            direction: FadeInDirection.leftToRight,
            child: HomeButton(
              label: "Voucher",
              iconData: IconlyBold.discount,
              color: Colors.orange,
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 5),
          FadeInAnimation(
            delay: 3.4,
            fadeOffset: 300,
            direction: FadeInDirection.leftToRight,
            child: HomeButton(
              label: "Bill",
              iconData: IconlyBold.document,
              color: Colors.purpleAccent.shade100,
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 5),
          FadeInAnimation(
            delay: 4.4,
            fadeOffset: 360,
            direction: FadeInDirection.leftToRight,
            child: HomeButton(
              label: "Send",
              iconData: IconlyBold.user_3,
              color: Colors.teal,
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 5),
          FadeInAnimation(
            delay: 5.4,
            fadeOffset: 440,
            direction: FadeInDirection.leftToRight,
            child: HomeButton(
                label: "More",
                iconData: IconlyBold.more_circle,
                color: Colors.red,
                onPressed: () {}
            ),
          ),
        ],
      ),
    ]),
  );
}
