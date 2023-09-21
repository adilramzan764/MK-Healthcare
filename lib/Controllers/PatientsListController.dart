import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PatientsListController extends GetxController {
  var items = <String>["Patient 1","Patient 2","Patient 3"].obs;

  void addItem(String item) {
    items.add(item);
  }

  void removeItem(int index) {
    items.removeAt(index);
  }
}
