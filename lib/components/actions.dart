import 'package:badges/badges.dart';
import 'package:extendlyshop/gobal/colors.dart';
import 'package:flutter/material.dart';

class ActionsIcons extends StatelessWidget {
  const ActionsIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Badge(
              position: BadgePosition.bottomEnd(),
              badgeColor: lightGray,
              badgeContent: const Text('0'),
              child: Image.asset("assets/icons/lock.png")),
          iconSize: 15,
        ),
        const SizedBox(
          width: 23,
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset("assets/icons/Star1.png"),
          iconSize: 15,
        )
      ],
    );
  }
}
