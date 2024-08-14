import 'package:get/state_manager.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  void bottomOnTap(int index) {
    selectedIndex.value = index;
  }
}
