import 'package:get/get.dart';
// import 'package:confetti/confetti.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class LiquidController extends GetxController {
  var total = 0.obs;
  var weight = 0.obs;
  var less = 0.obs;
  var drinking = 0.obs;
  var porcent = 0.obs;
  var quantities = [180, 250, 500, 750].obs;
  var theme = true.obs;
  // final controller = ConfettiController();
  // bool isPlaying = false;

  @override
  void onInit() {
    super.onInit();
    cargarPref();

    Timer.periodic(const Duration(hours: 24), (Timer t) => reset());
  }

  cargarPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    weight.value = prefs.getInt('weight') ?? 0;
    total.value = prefs.getInt('total') ?? 0;
    less.value = prefs.getInt('less') ?? 0;
    drinking.value = prefs.getInt('drinking') ?? 0;
    porcent.value = prefs.getInt('porcent') ?? 0;
    theme.value = prefs.getBool('theme') ?? false;
  }

  //Genera el faltante
  waterLess(pos) async {
    if (weight.value == 0) {
      return;
    } else {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      if (porcent > 120) {
        return;
      } else {
        less -= quantities[pos];
        drinking.value = total.value - less.value;
        // Guarda los nuevos valores después de que se hayan modificado
        // moreWater();
        porcentValue();
        prefs.setInt('less', less.value);
        prefs.setInt('drinking', drinking.value);
      }
    }
  }

  // //modifica el faltante por sobrante
  // moreWater() {
  //   if (less <= 0) {
  //     RxString newvalue = RxString(less.value.toString());
  //     return newvalue.replaceAll('-', '+');
  //   }
  //   return less;
  // }

  //resetea el sistema
  void reset() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    total.value = (weight.value * 35);
    less.value = total.value;
    drinking.value = 0;
    porcent.value = 0;
    prefs.setInt('drinking', drinking.value);
    prefs.setInt('less', less.value);
    prefs.setInt('porcent', porcent.value);
    return;
  }

  //modifica los valores del peso
  void updateValue(newValue) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (newValue < 50) {
      less.value = 50 * 35;
    } else {
      if (newValue == 0) {
        weight.value = 0;
        prefs.setInt('weight', weight.value);
      } else {
        weight.value = newValue;
        if (porcent.value != 0) {
          return;
        } else {
          total.value = (weight.value * 35);
          less.value = total.value;
        }
      }
      prefs.setInt('weight', weight.value);
      prefs.setInt('less', less.value);
      prefs.setInt('total', total.value);
    }
  }

  porcentValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (total.value == 0) {
      prefs.setInt('porcent', 0);
    } else {
      porcent.value = ((drinking.value * 100) ~/ total.value);
      prefs.setInt('porcent', porcent.toInt());
    }
  }

  changeTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    theme.value = value;
    prefs.setBool('theme', value);
  }
}
