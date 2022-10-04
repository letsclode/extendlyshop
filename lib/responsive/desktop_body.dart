import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // youtube video
                Container(
                  width: double.infinity,
                  height: 1024.h,
                  color: Colors.red,
                ),

                Container(
                  width: double.infinity,
                  height: 1024.h,
                  color: Colors.green,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
