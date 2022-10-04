import 'package:extendlyshop/components/button_widget.dart';
import 'package:extendlyshop/components/social_media_footer.dart';
import 'package:extendlyshop/widgets/sales_card_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../gobal/colors.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 1024.h,
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/backImage.png",
                            fit: BoxFit.fitHeight,
                            height: 1024.h,
                          ),
                        ],
                      ),
                      Positioned(
                        top: 255.h,
                        left: 0,
                        child: Container(
                          constraints:
                              BoxConstraints(maxHeight: 514.h, maxWidth: 381.w),
                          child: Image.asset(
                            "assets/images/1.png",
                          ),
                        ),
                      ),
                      Positioned(
                        top: 215.h,
                        right: 0,
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 724.w, maxHeight: 532.h),
                          child: Image.asset(
                            "assets/images/3.png",
                          ),
                        ),
                      ),
                      Positioned(
                        top: 289.h,
                        left: 350.w,
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 724.w, maxHeight: 532.h),
                          child: Image.asset(
                            "assets/images/2.png",
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 140),
                          child: CustomButton(
                            text: "Shop Now",
                            fontSize: 24.sp,
                            width: 198,
                            height: 51,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 900.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 30.h,
                      horizontal: 66.w,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/images/4.png",
                                fit: BoxFit.contain,
                                height: 600,
                                width: 409,
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/images/4.png",
                                fit: BoxFit.contain,
                                height: 600,
                                width: 409,
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/images/4.png",
                                fit: BoxFit.contain,
                                height: 600,
                                width: 409,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          """Lorem ipsum dolor sit amet, consectetur adipiscing elit,
sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco
laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
deserunt mollit anim id est laborum.""",
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                          style: const TextStyle().copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                              fontFamily: GoogleFonts.inter().fontFamily),
                        )
                      ],
                    ),
                  ),
                ),
                SalesCardPage(
                  rowCount: 4,
                  height: 1220.h,
                ),
                Container(
                  width: double.infinity,
                  height: 500.h,
                  color: darkGray,
                  padding:
                      EdgeInsets.symmetric(horizontal: 88.w, vertical: 37.h),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 3,
                          child: SocialMediaFooter(
                            isMobile: false,
                          )),
                      Expanded(
                          child: Container(
                        constraints: BoxConstraints(maxHeight: 240.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "COLLECTION",
                              style: const TextStyle().copyWith(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.inter().fontFamily),
                            ),
                            TextSub(),
                            TextSub(),
                            TextSub(),
                            TextSub(),
                            TextSub(),
                            TextSub()
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        constraints: BoxConstraints(maxHeight: 240.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "INFORMATION",
                              style: const TextStyle().copyWith(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.inter().fontFamily),
                            ),
                            TextSub(),
                            TextSub(),
                            TextSub(),
                            TextSub(),
                            TextSub(),
                            TextSub()
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        constraints: BoxConstraints(maxHeight: 240.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "MORE",
                              style: const TextStyle().copyWith(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: GoogleFonts.inter().fontFamily),
                            ),
                            TextSub(),
                            TextSub(),
                            TextSub(),
                            TextSub(),
                            TextSub(),
                            TextSub()
                          ],
                        ),
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget TextSub() => Text(
      "Lore, Ipsum",
      style: const TextStyle().copyWith(
          fontSize: 15.sp,
          fontWeight: FontWeight.w500,
          fontFamily: GoogleFonts.inter().fontFamily),
    );




// ebeae81