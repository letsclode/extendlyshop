import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/button_widget.dart';
import '../components/card_widget.dart';
import '../components/sale_widget.dart';

class SalesCardPage extends StatelessWidget {
  final int rowCount;
  final double height;
  const SalesCardPage({
    Key? key,
    required this.rowCount,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: Column(
        children: [
          SaleWidget(counter: rowCount == 2 ? 1 : 5),
          SizedBox(
            height: 50.h,
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 76.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (int i = 0; i < rowCount; i++)
                          Expanded(
                            child: CardWidget(
                              height: rowCount == 2 ? 260 : 360,
                              width: rowCount == 2 ? 200 : 232,
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (int i = 0; i < rowCount; i++)
                          Expanded(
                            child: CardWidget(
                              height: rowCount == 2 ? 260 : 360,
                              width: rowCount == 2 ? 200 : 232,
                            ),
                          ),
                      ],
                    ),
                    rowCount != 2
                        ? const SizedBox()
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              for (int i = 0; i < rowCount; i++)
                                CardWidget(
                                  height: rowCount == 2 ? 260 : 360,
                                  width: rowCount == 2 ? 200 : 232,
                                ),
                            ],
                          )
                  ],
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomButton(
                text: "More",
                fontSize: 24,
                height: 51,
                width: 198,
              )
            ],
          ),
          SizedBox(
            height: 50.h,
          )
        ],
      ),
    );
  }
}
