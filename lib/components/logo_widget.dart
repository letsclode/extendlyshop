import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogoWidget extends StatelessWidget {
  final double height;
  final double width;
  final double fontSize;
  const LogoWidget({
    Key? key,
    required this.height,
    required this.width,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: height,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffd9d9d9),
      ),
      child: Center(
        child: Text(
          "Logo",
          style: TextStyle(fontSize: fontSize, color: Colors.black)
              .copyWith(fontFamily: GoogleFonts.inter().fontFamily),
        ),
      ),
    );
  }
}
