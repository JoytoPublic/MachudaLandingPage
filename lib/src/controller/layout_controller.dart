import 'package:get/get.dart';

class LayoutController extends GetxController {
  static LayoutController get to => Get.find();

  RxDouble maxWidth = 0.0.obs;

  RxBool isDesktop = false.obs;
}
