import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SaleWidget extends StatelessWidget {
  final int counter;
  const SaleWidget({
    Key? key,
    required this.counter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 77.h,
        child: Card(
          margin: EdgeInsetsDirectional.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < counter; i++)
                Text(
                  "SALE",
                  style:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 30)
                          .copyWith(
                              color: const Color(0xffCF4242),
                              fontFamily: GoogleFonts.inter().fontFamily),
                ),
            ],
          ),
        ));
  }
}
