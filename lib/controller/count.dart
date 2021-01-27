import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';

class Counter extends GetxController {
  var _count = 0.obs;

  get count => _count;

  set count(value) => _count = value;

  incrament() {
    count = count + 1;
  }

  decrament() {
    count = count - 1;
  }
}
