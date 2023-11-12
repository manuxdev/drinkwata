import 'package:DrinkWata/src/widgets/utils/weight_init.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:DrinkWata/src/controller/liquid_controller.dart';

import 'package:DrinkWata/src/screens/screens.dart';
import 'package:DrinkWata/src/share_preference/preference_user.dart';

class ScrollPage extends StatelessWidget {
  ScrollPage({super.key});
  final hola = Get.put(LiquidController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [_page1(), _page2(context)],
    ));
  }

  Widget _page1() {
    return Stack(
      children: [
        backGround1(),
        const Align(
          alignment: Alignment.bottomCenter,
          child: Icon(
            Icons.keyboard_arrow_down,
            size: 70.0,
          ),
        ),
        texTos(),
      ],
    );
  }

  Widget _page2(BuildContext context) {
    return Stack(
      children: [
        backGround2(),
        bottonReg(context),
      ],
    );
  }
}

Widget backGround1() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
          Color.fromARGB(255, 181, 245, 253),
          Color.fromARGB(255, 87, 163, 250),
          Color.fromARGB(255, 24, 42, 146)
        ])),
  );
}

Widget backGround2() {
  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
          Color.fromARGB(255, 24, 42, 146),
          Color.fromARGB(255, 18, 17, 87),
          Color.fromARGB(255, 5, 9, 32)
        ])),
  );
}

Widget texTos() {
  const tituloTexto = TextStyle(color: Colors.black, fontSize: 40);
  const descriptionTexto =
      TextStyle(color: Colors.black, fontSize: 70, fontWeight: FontWeight.w800);
  return const Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Welcome to:', style: tituloTexto),
        Text("DrinkWata", style: descriptionTexto),
      ],
    ),
  );
}

Widget bottonReg(context) {
  final waterCtrl = Get.find<LiquidController>();

  final prefs = PreferenciasUsuario();
  waterCtrl.weight.value = prefs.weight;
  return Center(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Stack(alignment: AlignmentDirectional.center, children: [
        Center(
          child: Container(
            width: 400,
            height: 80,
            // color: const Color.fromARGB(84, 30, 30, 31),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color.fromARGB(127, 0, 0, 0)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Weight',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              width: 160,
              height: 400,
              child: ListWheelScrollView.useDelegate(
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 70,
                  controller:
                      FixedExtentScrollController(initialItem: prefs.weight),
                  onSelectedItemChanged: (value) {
                    waterCtrl.updateValue(value);
                  },
                  childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 401,
                      builder: (context, index) => WeightInit(mins: index))),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: Text(
                'Kg',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ],
        ),
      ]),
      const SizedBox(
        height: 20,
      ),
      //////////////////////////////////////////////////////////////////

      ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
          backgroundColor:
              const MaterialStatePropertyAll(Color.fromARGB(255, 63, 182, 209)),
          textStyle: const MaterialStatePropertyAll(
              TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
        onPressed: () {
          if (waterCtrl.weight.value != 0 && waterCtrl.weight.value >= 30) {
            final route = MaterialPageRoute(builder: (context) => Screens());
            Navigator.push(context, route);
          }
        },
        child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0),
            child: Text("Listo")),
      ),
    ],
  ));
}
