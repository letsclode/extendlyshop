import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'logo_widget.dart';

class SocialMediaFooter extends StatelessWidget {
  final bool isMobile;
  const SocialMediaFooter({
    Key? key,
    required this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: LogoWidget(
            width: isMobile ? 100 : 140,
            height: isMobile ? 100 : 140,
            fontSize: isMobile ? 25 : 25.sp,
          ),
        ),
        Row(
          children: [
            Image.asset(
              "assets/icons/contact.png",
              width: 41,
              height: 147,
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: isMobile ? 380 : 400.w,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lorem ipsum dolor sict amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle().copyWith(
                          fontSize: isMobile ? 15 : 15.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: GoogleFonts.inter().fontFamily),
                    ),
                    Text(
                      "Lorem ipsum ",
                      style: const TextStyle().copyWith(
                          fontSize: isMobile ? 15 : 15.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: GoogleFonts.inter().fontFamily),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet",
                      style: const TextStyle().copyWith(
                          fontSize: isMobile ? 15 : 15.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: GoogleFonts.inter().fontFamily),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Image.asset(
          "assets/icons/socialmedia.png",
          width: 200,
          height: 64,
        ),
        isMobile
            ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "COLLECTION",
                      style: const TextStyle().copyWith(
                          fontSize: isMobile ? 18 : 18.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.inter().fontFamily),
                    ),
                    Text(
                      "INFORMATION",
                      style: const TextStyle().copyWith(
                          fontSize: isMobile ? 18 : 18.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.inter().fontFamily),
                    ),
                    Text(
                      "MORE",
                      style: const TextStyle().copyWith(
                          fontSize: isMobile ? 18 : 18.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: GoogleFonts.inter().fontFamily),
                    ),
                  ],
                ),
              )
            : const SizedBox(),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
