import 'package:extendlyshop/components/actions.dart';
import 'package:extendlyshop/components/drawer.dart';
import 'package:extendlyshop/components/logo_widget.dart';
import 'package:extendlyshop/components/top_bar_contents.dart';
import 'package:extendlyshop/gobal/colors.dart';
import 'package:extendlyshop/responsive/desktop_body.dart';
import 'package:extendlyshop/responsive/mobile_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const MyDrawer(),
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          const ResponsiveLayout(
            mobileBody: MyMobileBody(),
            desktopBody: MyDesktopBody(),
          ),
          Positioned(
              top: 2,
              right: 30,
              child: Text(
                "Help     |     Join Us     |     Sign In",
                style: const TextStyle(fontSize: 10)
                    .copyWith(fontFamily: GoogleFonts.inter().fontFamily),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 26),
            child: SizedBox(
              height: 100,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: screenSize.width < 900
                    ? AppBar(
                        backgroundColor: Colors.white,
                        centerTitle: true,
                        title: const LogoWidget(
                            height: 50, width: 50, fontSize: 12),
                        leading: GestureDetector(
                          onTap: () {
                            scaffoldKey.currentState!.openDrawer();
                          },
                          child: const Icon(
                            Icons.menu,
                            color: lightGray,
                          ),
                        ),
                        actions: const [ActionsIcons()],
                      )
                    : PreferredSize(
                        preferredSize: Size(screenSize.width, 88),
                        child: const TopBarContents()),
                drawer: const MyDrawer(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
