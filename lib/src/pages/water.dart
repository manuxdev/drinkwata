import 'package:flutter/material.dart';

import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class Water extends StatefulWidget {
  const Water({
    Key? key,
  }) : super(key: key);

  @override
  _WaterWidgetState createState() => _WaterWidgetState();
}

class _WaterWidgetState extends State<Water>
    with SingleTickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late AnimationController _controller;
  late Animation<double> _waveAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 100),
    )..repeat();

    _waveAnimation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      body: AnimatedBuilder(
          animation: _waveAnimation,
          builder: (context, child) {
            return Stack(
              children: [
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40),
                    Text(
                      "Current Hidration",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 246, 246, 246)),
                    ),
                    SizedBox(height: 80),
                    SizedBox(
                      width: 300.0,
                      height: 300.0,
                      child: LiquidCircularProgressIndicator(
                          value: _waveAnimation.value, // Set initial value
                          valueColor: const AlwaysStoppedAnimation(
                            Color.fromARGB(255, 63, 182, 209),
                          ),
                          backgroundColor: Color.fromARGB(255, 69, 69, 69),
                          borderColor: Color.fromARGB(255, 61, 61, 61),
                          borderWidth: 2.0,
                          direction: Axis.vertical,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${(_waveAnimation.value * 100).toStringAsFixed(0)}%",
                                style: const TextStyle(
                                    fontSize: 80.0,
                                    color: Color.fromARGB(255, 246, 246, 246),
                                    fontWeight: FontWeight.w700),
                              ),
                              const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 15, 0, 0),
                                  child: Text(
                                    '766 ml',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color:
                                            Color.fromARGB(255, 231, 231, 231)),
                                  )),
                              const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 7, 0, 0),
                                  child: Text(
                                    '1234 ml',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 209, 209, 209)),
                                  )),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FloatingActionButton.extended(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              onPressed: () {},
                              backgroundColor:
                                  Color.fromARGB(255, 63, 182, 209),
                              icon: Icon(Icons.coffee_outlined),
                              label: Text('180 ml'),
                            ),
                            FloatingActionButton.extended(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor:
                                  Color.fromARGB(255, 63, 182, 209),
                              onPressed: () {},
                              icon: Icon(
                                Icons.sports_bar_outlined,
                              ),
                              label: Text('250 ml'),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton.extended(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                backgroundColor:
                                    Color.fromARGB(255, 63, 182, 209),
                                onPressed: () {},
                                icon: Icon(Icons.coffee_outlined),
                                label: Text('500 ml'),
                              ),
                              FloatingActionButton.extended(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                backgroundColor:
                                    Color.fromARGB(255, 63, 182, 209),
                                onPressed: () {},
                                icon: Icon(Icons.blender_outlined),
                                label: Text('750 ml'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ))
              ],
            );
          }),
    );
  }
}

// class HeartPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = Colors.red
//       ..style = PaintingStyle.fill;

//     var width = size.width;
//     var height = size.height;

//     Path path = Path();
//     path.moveTo(width / 2, height / 5);
//     path.arcToPoint(Offset(width / 5, height / 2),
//         radius: Radius.elliptical(width / 5, height / 5),
//         rotation: math.pi / 2);
//     path.arcToPoint(Offset(width / 2, height / 1.25),
//         radius: Radius.elliptical(width / 2.5, height / 2.5),
//         rotation: math.pi / 2);
//     path.arcToPoint(Offset(width / 1.25, height / 2),
//         radius: Radius.elliptical(width / 5, height / 5),
//         rotation: math.pi / 2);
//     path.arcToPoint(Offset(width / 2, height / 5),
//         radius: Radius.elliptical(width / 2.5, height / 2.5),
//         rotation: math.pi / 2);

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
