import 'package:extendlyshop/components/top_bar_contents.dart';
import 'package:extendlyshop/responsive/desktop_body.dart';
import 'package:extendlyshop/responsive/mobile_body.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          const ResponsiveLayout(
            mobileBody: MyMobileBody(),
            desktopBody: MyDesktopBody(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 100,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: PreferredSize(
                    preferredSize: Size(screenSize.width, 70),
                    child: const TopBarContents()),
              ),
            ),
          )
        ],
      ),
    );
  }
}
