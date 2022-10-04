import 'package:flutter/material.dart';

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
      color: Colors.white.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                child: Text("Logo"),
              ),
              SizedBox(width: screenSize.width / 15),
              InkWell(
                onHover: (value) {
                  setState(() {
                    value ? _isHovering[0] = true : _isHovering[0] = false;
                  });
                },
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                          color: _isHovering[0]
                              ? const Color(0xFF077bd7)
                              : const Color(0xFF077bd7),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Visibility(
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      visible: _isHovering[0],
                      child: Container(
                        height: 2,
                        width: 20,
                        color: const Color(0xFF051441),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    //);
  }
}