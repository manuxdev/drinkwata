import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final String assetName = 'assets/image.svg';
    final Widget svg = SvgPicture.asset(
      assetName,
      height: 360,
      alignment: Alignment(0.00, -1.50),
      fit: BoxFit.cover,
    );
    return Container(
      child: SafeArea(
        top: true,
        child: Container(
          height: MediaQuery.sizeOf(context).height * 1,
          child: Stack(
            children: [
              Column(mainAxisSize: MainAxisSize.max, children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Container(
                    width: 192,
                    height: 131,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                  ),
                ),
                Container(
                  width: 312,
                  height: 302,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 74, 67, 236),
                        Color.fromARGB(250, 58, 203, 194)
                      ],
                      stops: [0, 1],
                      begin: AlignmentDirectional(0, -1),
                      end: AlignmentDirectional(0, 1),
                    ),
                    borderRadius: BorderRadius.circular(500),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: svg,
                    ),
                  ),
                ),
                Text(
                  "120:00",
                  style: TextStyle(
                    color: Color.fromARGB(250, 58, 203, 194),
                    fontFamily: 'Readex Pro',
                    fontSize: 60,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '1500/3000',
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
