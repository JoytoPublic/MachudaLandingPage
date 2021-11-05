import 'package:get/get.dart';

class WebScrollController extends GetxController {
  static WebScrollController get to => Get.find();

  RxDouble offset = 0.0.obs;
}
