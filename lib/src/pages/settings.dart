import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 33, 33, 33),
        key: scaffoldKey,
        body: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
              child: Text(
                'Settings',
                style: TextStyle(
                    color: Color.fromARGB(255, 246, 246, 246), fontSize: 40),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Settingsfication',
                    style: TextStyle(
                        color: Color.fromARGB(255, 246, 246, 246),
                        fontSize: 20),
                  ),
                  SwitchExample()
                ],
              ),
            ),
            const Divider(
              indent: 40,
              endIndent: 40,
              height: 10,
              color: Color.fromARGB(255, 109, 109, 109),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 20, 60, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily consumption',
                    style: TextStyle(
                        color: Color.fromARGB(255, 246, 246, 246),
                        fontSize: 20),
                  ),
                  Text(
                    '"2000 ml"',
                    style: TextStyle(
                        color: Color.fromARGB(255, 246, 246, 246),
                        fontSize: 20),
                  )
                ],
              ),
            ),
            const Divider(
              indent: 40,
              endIndent: 40,
              height: 10,
              color: Color.fromARGB(255, 109, 109, 109),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40, 20, 40, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Exit',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              indent: 40,
              endIndent: 40,
              height: 10,
              color: Color.fromARGB(255, 109, 109, 109),
            )
          ],
        ));
  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Color.fromARGB(255, 63, 182, 209),
      inactiveTrackColor: Color.fromARGB(255, 109, 109, 109),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
