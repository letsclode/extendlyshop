import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final double height;
  final double width;
  const CustomButton({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(60.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: -3,
              blurRadius: 5,
              offset: Offset(0, 3),
            )
          ]),
      child: Expanded(
          child: TextButton(
              clipBehavior: Clip.antiAlias,
              onPressed: () {},
              child: Text(
                text,
                style: const TextStyle().copyWith(
                    color: Colors.black,
                    fontSize: fontSize,
                    fontFamily: GoogleFonts.inter().fontFamily,
                    fontWeight: FontWeight.w500),
              ))),
    );
  }
}
