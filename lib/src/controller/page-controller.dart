// ignore_for_file: file_names

import 'package:get/get.dart';

class PagesController extends GetxController {
  var tabIndex = 0;

  changeTabIndex(index) {
    tabIndex = index;
    update();
  }
}
