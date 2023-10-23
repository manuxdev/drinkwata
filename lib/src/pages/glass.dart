import 'package:flutter/material.dart';

class Glass extends StatefulWidget {
  const Glass({Key? key}) : super(key: key);

  @override
  _GlassState createState() => _GlassState();
}

class _GlassState extends State<Glass> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: AlignmentDirectional(0.00, 0.00),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 150, 0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/image2.png',
                            width: 82,
                            height: 69,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          '500ML',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/image2.png',
                            width: 82,
                            height: 69,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          '1000ML',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/image2.png',
                            width: 82,
                            height: 69,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          '1500ML',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 48, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/image2.png',
                              width: 82,
                              height: 69,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            '2000ML',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/image2.png',
                              width: 82,
                              height: 69,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            '2500ML',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/image2.png',
                              width: 82,
                              height: 69,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            '3000ML',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
