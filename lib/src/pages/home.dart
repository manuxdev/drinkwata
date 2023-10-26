import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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
              return LiquidLinearProgressIndicator(
                  value: _waveAnimation.value, // Set initial value
                  valueColor: const AlwaysStoppedAnimation(
                    Color.fromARGB(255, 63, 182, 209),
                  ),
                  backgroundColor: Color.fromARGB(255, 33, 33, 33),
                  borderColor: Color.fromARGB(255, 61, 61, 61),
                  borderWidth: 2.0,
                  direction: Axis.vertical,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 150,
                      ),
                      const Text(
                        "1234 ml",
                        style: const TextStyle(
                            fontSize: 60.0,
                            color: Color.fromARGB(255, 246, 246, 246),
                            fontWeight: FontWeight.w700),
                      ),
                      const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Text(
                            '766 ml',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 231, 231, 231)),
                          )),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 300, 0, 0),
                        child: FloatingActionButton.large(
                            backgroundColor: Color.fromARGB(255, 33, 70, 88),
                            onPressed: () {
                              _showBottomSheet();
                            },
                            child: const Icon(
                              Icons.add,
                              size: 40,
                            )),
                      )
                    ],
                  ));
            }));
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Color.fromARGB(255, 61, 61, 61),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 170,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: Divider(
                    thickness: 2,
                    color: Color.fromARGB(255, 231, 231, 231),
                    indent: 150,
                    endIndent: 150),
              ),
              ListTile(
                leading:
                    Icon(Icons.add, color: Color.fromARGB(255, 231, 231, 231)),
                title: Text('Add',
                    style:
                        TextStyle(color: Color.fromARGB(255, 231, 231, 231))),
                onTap: () {},
              ),
              Divider(color: Color.fromARGB(255, 109, 109, 109)),
              ListTile(
                leading: Icon(
                  Icons.delete,
                  color: Color.fromARGB(255, 231, 231, 231),
                ),
                title: Text('Delete',
                    style:
                        TextStyle(color: Color.fromARGB(255, 231, 231, 231))),
                onTap: () {},
              ),
              Divider(color: Color.fromARGB(255, 109, 109, 109)),
            ],
          ),
        );
      },
    );
  }
}
