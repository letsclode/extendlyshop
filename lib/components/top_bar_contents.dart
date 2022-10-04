import 'package:extendlyshop/components/actions.dart';
import 'package:extendlyshop/components/logo_widget.dart';
import 'package:flutter/material.dart';
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
              const LogoWidget(
                height: 60,
                width: 60,
                fontSize: 10,
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
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 194,
                    padding: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffe4e4e4)),
                    child: Center(
                      child: TextField(
                        style: const TextStyle().copyWith(
                            fontSize: 12,
                            fontFamily: GoogleFonts.inter().fontFamily),
                        decoration: InputDecoration(
                          prefixIconConstraints:
                              const BoxConstraints(maxHeight: 20),
                          prefixIcon: Image.asset(
                            "assets/icons/search.png",
                            scale: 3,
                          ),
                          hintText: 'Search',
                          hintStyle: const TextStyle().copyWith(
                              fontSize: 12,
                              fontFamily: GoogleFonts.inter().fontFamily),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 23,
                  ),
                  const ActionsIcons()
                ],
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
            fontSize: 12,
          ).copyWith(fontFamily: GoogleFonts.inter().fontFamily),
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
