import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:project_2/src/controller/liquid_controller.dart';
import 'package:project_2/src/pages/main_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  const estiloTexto = TextStyle(color: Colors.white, fontSize: 50);

  return SafeArea(
    child: Column(
      children: <Widget>[
        const SizedBox(
          height: 80.0,
        ),
        const Text('Hola', style: estiloTexto),
        const Text("Miercoles", style: estiloTexto),
        Expanded(child: Container()),
        const Icon(
          Icons.keyboard_arrow_down,
          size: 70.0,
          color: Colors.white,
        )
      ],
    ),
  );
}

Widget bottonReg(context) {
  final waterCtrl = Get.find<LiquidController>();
  final weightController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  setWeight(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('weight', value);
    waterCtrl.createWeight(value);
  }

  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 250,
          child: Form(
            key: formKey,
            child: SizedBox(
              width: 250,
              child: TextFormField(
                controller: weightController,
                keyboardType: TextInputType.number,
                maxLength: const int.fromEnvironment("peso", defaultValue: 3),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese un valor';
                  }
                  int newValue = int.parse(value);
                  if (newValue < 25) {
                    return 'El valor debe ser al menos 25kg';
                  }
                  if (newValue > 160) {
                    return "El valor debe ser menor de 160 kg";
                  }
                  return null;
                },
                onChanged: setWeight,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Weight',
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))))),
          onPressed: () {
            if (formKey.currentState!.validate()) {
              final route = MaterialPageRoute(builder: (context) => MainPage());
              Navigator.push(context, route);
            }
          },
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
              child: Text("HOla")),
        ),
      ],
    ),
  );
}
