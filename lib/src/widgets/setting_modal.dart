import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/src/controller/liquid_controller.dart';
import 'package:project_2/src/share_preference/preference_user.dart';

class SettingModal extends StatelessWidget {
  const SettingModal({super.key});

  @override
  Widget build(BuildContext context) {
    final waterCtrl = Get.find<LiquidController>();
    final prefs = PreferenciasUsuario();
    waterCtrl.weight.value = prefs.weight;
    return Obx(
      () => OutlinedButton(
        onPressed: () => dialogBuilder(context),
        child: Text(
          '${waterCtrl.weight} kg',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

Future<void> dialogBuilder(BuildContext context) {
  final waterCtrl = Get.find<LiquidController>();
  final weightController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final prefs = PreferenciasUsuario();
  return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Change weight'),
          content: Form(
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
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Enable'),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  prefs.weight = int.parse(weightController.text);
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      });
}
