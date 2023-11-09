import 'package:flutter/material.dart';
import 'package:DrinkWata/src/widgets/setting_modal.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                'Theme',
                style: TextStyle(
                    color: Color.fromARGB(255, 246, 246, 246), fontSize: 20),
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
                'Consumo Diario',
                style: TextStyle(
                    color: Color.fromARGB(255, 246, 246, 246), fontSize: 20),
              ),
              SettingModal()
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
          padding: const EdgeInsetsDirectional.fromSTEB(40, 20, 40, 20),
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
    );
  }
}

class SwitchExample extends StatelessWidget {
  const SwitchExample({super.key});

  @override
  Widget build(BuildContext context) {
    bool light = true;
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: const Color.fromARGB(255, 63, 182, 209),
      inactiveTrackColor: const Color.fromARGB(255, 109, 109, 109),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
      },
    );
  }
}
