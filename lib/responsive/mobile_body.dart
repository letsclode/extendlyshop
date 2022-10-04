import 'package:extendlyshop/components/social_media_footer.dart';
import 'package:extendlyshop/widgets/sales_card_page.dart';
import 'package:flutter/material.dart';
import '../components/button_widget.dart';
import '../gobal/colors.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // youtube video
                SizedBox(
                  height: 900,
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/backImage.png",
                            fit: BoxFit.fill,
                            height: 900,
                          ),
                        ],
                      ),
                      Positioned(
                        top: 100,
                        right: 0,
                        child: Image.asset("assets/images/3.png",
                            fit: BoxFit.fill, width: 267, height: 197),
                      ),
                      Positioned(
                        top: 229,
                        left: 15,
                        child: Image.asset(
                          "assets/images/2.png",
                          fit: BoxFit.fill,
                          height: 294,
                          width: 197,
                        ),
                      ),
                      Positioned(
                        top: 400,
                        right: 15,
                        child: Image.asset(
                          "assets/images/1.png",
                          fit: BoxFit.fill,
                          height: 263,
                          width: 187,
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: CustomButton(
                          text: "Shop Now",
                          fontSize: 20,
                          height: 47,
                          width: 179,
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 1056,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            constraints: const BoxConstraints(
                                maxHeight: 300, maxWidth: 204),
                            child: Stack(
                              children: [
                                Image.asset("assets/images/4.png",
                                    height: 300, width: 204),
                                const Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 20),
                                        child: CustomButton(
                                          text: "Sweetshirts",
                                          fontSize: 12,
                                          height: 30,
                                          width: 127,
                                        )))
                              ],
                            )),
                        Container(
                            constraints: const BoxConstraints(
                                maxHeight: 300, maxWidth: 204),
                            child: Stack(
                              children: [
                                Image.asset("assets/images/4.png",
                                    height: 300, width: 204),
                                const Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 20),
                                        child: CustomButton(
                                          text: "Sweetshirts",
                                          fontSize: 12,
                                          height: 30,
                                          width: 127,
                                        )))
                              ],
                            )),
                        Container(
                            constraints: const BoxConstraints(
                                maxHeight: 300, maxWidth: 204),
                            child: Stack(
                              children: [
                                Image.asset("assets/images/4.png",
                                    height: 300, width: 204),
                                const Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 20),
                                        child: CustomButton(
                                          text: "Sweetshirts",
                                          fontSize: 12,
                                          height: 30,
                                          width: 127,
                                        )))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),

                const SalesCardPage(
                  rowCount: 2,
                  height: 1240,
                ),
                Container(
                    height: 550,
                    color: darkGray,
                    child: const SocialMediaFooter(
                      isMobile: true,
                    ))
                // comment section & recommended videos
              ],
            ),
          ),
        ),
      ),
    );
  }
}
