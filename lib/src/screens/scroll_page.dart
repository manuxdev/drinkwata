import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:DrinkWata/src/controller/liquid_controller.dart';
import 'package:DrinkWata/src/screens/screens.dart';
import 'package:DrinkWata/src/share_preference/preference_user.dart';
// import 'package:shared_preferences/shared_preferences.dart';

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
        Text('Bienvenido a:', style: tituloTexto),
        Text("DrinkWata", style: descriptionTexto),
      ],
    ),
  );
}

Widget bottonReg(context) {
  final waterCtrl = Get.find<LiquidController>();
  final weightController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final prefs = PreferenciasUsuario();
  waterCtrl.weight.value = prefs.weight;
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
                onChanged: (value) {
                  waterCtrl.updateValue(value);
                },
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
              final route = MaterialPageRoute(builder: (context) => Screens());
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
