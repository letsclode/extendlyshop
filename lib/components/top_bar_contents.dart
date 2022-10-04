import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBarContents extends StatefulWidget {
  const TopBarContents();

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                child: Text("Logo"),
              ),
              SizedBox(width: screenSize.width / 15),
              navBarText("HOME", _isHovering, (value) {
                setState(() {
                  value ? _isHovering[0] = true : _isHovering[0] = false;
                });
              }),
              navBarText("NEW ARRIVAL", _isHovering, (value) {
                setState(() {
                  value ? _isHovering[0] = true : _isHovering[0] = false;
                });
              }),
              navBarText("SHOP", _isHovering, (value) {
                setState(() {
                  value ? _isHovering[0] = true : _isHovering[0] = false;
                });
              }),
              navBarText("LAST COLLECTION", _isHovering, (value) {
                setState(() {
                  value ? _isHovering[0] = true : _isHovering[0] = false;
                });
              }),
              navBarText("MEN", _isHovering, (value) {
                setState(() {
                  value ? _isHovering[0] = true : _isHovering[0] = false;
                });
              }),
              navBarText("WOMEN", _isHovering, (value) {
                setState(() {
                  value ? _isHovering[0] = true : _isHovering[0] = false;
                });
              }),
              Container(
                height: 30.h,
                width: 194.w,
                padding: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: const Color(0xffe4e4e4)),
                child: Center(
                  child: TextField(
                    style: const TextStyle().copyWith(
                        fontSize: 12.sp,
                        fontFamily: GoogleFonts.inter().fontFamily),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search',
                      hintStyle: const TextStyle().copyWith(
                          fontSize: 12.sp,
                          fontFamily: GoogleFonts.inter().fontFamily),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
    //);
  }
}

Widget navBarText(text, isHovering, onhover) => InkWell(
    onHover: (value) {
      onhover(value);
    },
    onTap: () {},
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: TextStyle(
              color: isHovering[0] ? Colors.black : Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
        const SizedBox(height: 5),
        Visibility(
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          visible: isHovering[0],
          child: Container(
            height: 2,
            width: 20,
            color: const Color(0xFF051441),
          ),
        )
      ],
    ));
