import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:verto_core/data/models/report_model.dart';
import 'package:verto_core/view/home/home.dart';
import 'package:verto_core/view/reports/reports.dart';

class HomeController extends GetxController {
  final tabIndex = 0.obs;
  final RxInt currentIndex = 0.obs;
  // final CarouselController carouselController = CarouselController();
  final pageController = PageController();
  final pageIndex = 0.obs;
  List widgets = [
    {"id": 0, "Widget": Home(), "icon": Icons.home, "title": "الرئيسية"},
    {
      "id": 1,
      "Widget": Text("data"),
      "icon": Icons.heart_broken_outlined,
      "title": "الرئيسية"
    },
    {"id": 2, "Widget": Reports(), "icon": Icons.report, "title": "التقارير"},
    {
      "id": 3,
      "Widget": const Text("data"),
      "icon": Icons.person_outline,
      "title": "الرئيسية"
    },
  ];
  List images = [
    {"id": 1, "image_path": "assets/images/online-money.png"},
    {"id": 2, "image_path": "assets/images/online-money.png"},
    {"id": 3, "image_path": "assets/images/online-money.png"},
  ];
  List<GDPData> category = [
    GDPData(name: "Eating Out", value: 100.0),
    GDPData(name: "Bills", value: 100.0),
    GDPData(name: "Online Shopping", value: 20.0),
    GDPData(name: "Subscriptions", value: 100.0),
    GDPData(name: "Fees", value: 5.0),
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
