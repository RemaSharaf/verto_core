import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:verto_core/view/home/home.dart';
import 'package:verto_core/view/reports/reports.dart';

class HomeController extends GetxController {
  final tabIndex = 0.obs;
  final RxInt currentIndex = 0.obs;
  // final CarouselController carouselController = CarouselController();

  List widgets = [
    {"id": 0, "Widget": Home(), "icon": Icons.home, "title": "الرئيسية"},
    {
      "id": 1,
      "Widget": Text("data"),
      "icon": Icons.heart_broken_outlined,
      "title": "adf"
    },
    {"id": 2, "Widget": Reports(), "icon": Icons.report, "title": "ewef"},
    {
      "id": 3,
      "Widget": const Text("data"),
      "icon": Icons.person_outline,
      "title": "aass"
    },
  ];
  List images = [
    {"id": 1, "image_path": "assets/images/online-money.png"},
    {"id": 2, "image_path": "assets/images/online-money.png"},
    {"id": 3, "image_path": "assets/images/online-money.png"},
  ];
  List category = [
    {"name": "Eating Out", "amount": 100.0},
    {"name": "Bills", "amount": 100.0},
    {"name": "Online Shopping", "amount": 20.0},
    {"name": "Subscriptions", "amount": 100.0},
    {"name": "Fees", "amount": 5.0},
  ];
  List pieColors = [
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.deepOrange,
    Colors.brown,
  ];

  void changeTab(int index) {
    tabIndex.value = index;
  }

  void changeCurrentIndex(int index) {
    currentIndex.value = index;
  }
}
