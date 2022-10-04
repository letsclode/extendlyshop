import 'package:badges/badges.dart';
import 'package:extendlyshop/gobal/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  final double height;
  final double width;
  const CardWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Badge(
      toAnimate: true,
      shape: BadgeShape.square,
      badgeColor: lightYellow,
      borderRadius: BorderRadius.circular(8),
      badgeContent:
          const Text('15% OFF', style: TextStyle(color: Colors.white)),
      child: Stack(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/4.png",
                  height: height,
                  width: width,
                  fit: BoxFit.fill,
                ),
                Text(
                  "LOREM IPSUM",
                  style:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)
                          .copyWith(fontFamily: GoogleFonts.inter().fontFamily),
                ),
                Text(
                  "Lorem ipsum",
                  style:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.w400)
                          .copyWith(fontFamily: GoogleFonts.inter().fontFamily),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
