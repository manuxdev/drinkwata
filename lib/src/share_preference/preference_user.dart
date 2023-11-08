import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario _instancia = PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();
  late SharedPreferences _prefs;

  initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
  }

  get weight {
    return _prefs.getInt('weight') ?? 0;
  }

  set weight(value) {
    _prefs.setInt('weight', value);
  }

  get total {
    return _prefs.getInt('total') ?? 0;
  }

  set total(value) {
    _prefs.setInt('total', value);
  }

  get less {
    return _prefs.getInt('less') ?? 0;
  }

  set less(value) {
    _prefs.setInt('less', value);
  }

  get drinking {
    return _prefs.getInt('drinking') ?? 0;
  }

  set drinking(value) {
    _prefs.setInt('drinking', value);
  }

  get porcent {
    return _prefs.getInt('porcent') ?? 0;
  }

  set porcent(value) {
    _prefs.setInt('porcent', value);
  }
}
