import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final tabIndex = 0.obs;
  final RxInt currentIndex = 0.obs;
  final CarouselController carouselController = CarouselController();
  List images = [
    {"id": 0, "image_path": "assets/images/online-money.png"},
    {"id": 1, "image_path": "assets/images/online-money.png"},
    {"id": 2, "image_path": "assets/images/online-money.png"},
  ];
  void changeTab(int index) {
    tabIndex.value = index;
  }

  void changeCurrentIndex(int index) {
    currentIndex.value = index;
  }
}
