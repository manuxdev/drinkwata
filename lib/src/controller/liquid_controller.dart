import 'package:get/get.dart';
// import 'package:confetti/confetti.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LiquidController extends GetxController {
  var total = 0.obs;
  var weight = 0.obs;
  var less = 0.obs;
  var drinking = 0.obs;
  var porcent = 0.obs;
  var quantities = [180, 250, 500, 750].obs;
  // final controller = ConfettiController();
  // bool isPlaying = false;

  @override
  void onInit() {
    super.onInit();
    cargarPref();
  }

  cargarPref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    weight.value = prefs.getInt('weight') ?? 0;
  }

// Genera el valor inicial
  void createWeight(String valor) {
    if (valor != '') {
      weight.value = int.parse(valor);
      total.value = (weight.value * 35);
      less.value = total.value;
    } else {
      null;
    }
  }

  //Genera el faltante
  waterLess(pos) {
    less -= quantities[pos];
    drinking.value = total.value - less.value;
  }

  //modifica el faltante por sobrante
  moreWater() {
    if (less <= 0) {
      RxString newvalue = RxString(less.value.toString());
      return newvalue.replaceAll('-', '+');
    }
    return less;
  }

  //resetea el sistema
  reset() {
    total.value = (weight.value * 35);
    less.value = total.value;
    drinking.value = 0;
  }

  //modifica los valores del peso
  void updateValue(String newValue) {
    weight.value = int.parse(newValue);
    total.value = (weight.value * 35);
    less.value = total.value;
    var oldTotal = total.value;
    var resto = total.value - oldTotal;
    less.value += resto;
  }

  // porcentValue() {
  //   var tanto = (drinking.value * 100) / total.value;
  //   return tanto.toInt();
  // }
}
