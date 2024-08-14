import 'package:get/get.dart';

class TextExpansionController extends GetxController {
  var isExpanded = false.obs;

  void onTapTextExpanded() {
    isExpanded.value = !isExpanded.value;
  }
}
