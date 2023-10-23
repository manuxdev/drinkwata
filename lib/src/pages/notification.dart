import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  _NotiState createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        key: scaffoldKey,
        body: SafeArea(
            top: true,
            child: Container(
                height: MediaQuery.sizeOf(context).height * 1,
                child: Stack(children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.00, -1.00),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 80, 16, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              width: 354,
                              height: 74,
                              decoration: BoxDecoration(
                                color: Theme.of(context).canvasColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.00, 0.00),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'assets/image2.png',
                                            width: 82,
                                            height: 69,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Text(
                                          '12:00am',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 40,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Switch.adaptive(
                                    value: true,
                                    onChanged: (newValue) async {
                                      setState(() {});
                                    },
                                    activeColor:
                                        Color.fromARGB(255, 59, 195, 197),
                                    activeTrackColor:
                                        Color.fromARGB(235, 117, 117, 119),
                                    inactiveTrackColor:
                                        Color.fromARGB(72, 176, 176, 177),
                                    inactiveThumbColor:
                                        Color.fromARGB(72, 165, 165, 167),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, -1.00),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 80, 16, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              width: 354,
                              height: 74,
                              decoration: BoxDecoration(
                                color: Theme.of(context).canvasColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.00, 0.00),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'assets/image2.png',
                                            width: 82,
                                            height: 69,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Text(
                                          '14:00pm',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 40,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Switch.adaptive(
                                    value: true,
                                    onChanged: (newValue) async {
                                      setState(() {});
                                    },
                                    activeColor:
                                        Color.fromARGB(255, 59, 195, 197),
                                    activeTrackColor:
                                        Color.fromARGB(235, 117, 117, 119),
                                    inactiveTrackColor:
                                        Color.fromARGB(72, 176, 176, 177),
                                    inactiveThumbColor:
                                        Color.fromARGB(72, 165, 165, 167),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, -1.00),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(16, 80, 16, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              width: 354,
                              height: 74,
                              decoration: BoxDecoration(
                                color: Theme.of(context).canvasColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.00, 0.00),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: Image.asset(
                                            'assets/image2.png',
                                            width: 82,
                                            height: 69,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const Text(
                                          '16:00pm',
                                          style: TextStyle(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 40,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Switch.adaptive(
                                    value: true,
                                    onChanged: (newValue) async {
                                      setState(() {});
                                    },
                                    activeColor:
                                        Color.fromARGB(255, 59, 195, 197),
                                    activeTrackColor:
                                        Color.fromARGB(235, 117, 117, 119),
                                    inactiveTrackColor:
                                        Color.fromARGB(72, 176, 176, 177),
                                    inactiveThumbColor:
                                        Color.fromARGB(72, 165, 165, 167),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                        child: Text(
                          'Agrega diferentes horarios',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(1.00, 0.00),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 550, 30, 0),
                      child: IconButton(
                        icon: const Icon(
                          Icons.add,
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ]))),
      ),
    );
  }
}
