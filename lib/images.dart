import 'package:flutter/material.dart';

class _ImageProvider {
  static String png(String img) {
    return "assets/images/$img.png";
  }

  static String svg(String img) {
    return "assets/svg/$img.svg";
  }

  static String json(String img) {
    return "assets/json/$img.json";
  }
}

class _SvgImages {
  final String layer = _ImageProvider.svg("Layer");
  final String notification = _ImageProvider.svg("notification");
  final IconData icon = Icons.home;
  final String payout = _ImageProvider.svg("payout");
  final String vector = _ImageProvider.svg("Vector");
  final String heart = _ImageProvider.svg("heart");
  final String home = _ImageProvider.svg("home");
  final String person = _ImageProvider.svg("person");
  final String pie = _ImageProvider.svg("pie");
}

class _JsonImages {}

class _PngImages {
  final String group = _ImageProvider.png("Group");
  final String onlineMoney = _ImageProvider.png("online-money");
  final String rectangle = _ImageProvider.png("Rectangle");
}

class AppImages {
  final svg = _SvgImages();
  final png = _PngImages();
  final json = _JsonImages();
}

class SvgIcons {
  SvgIcons._();

  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;
  static const IconData heart = Icons.favorite_border_outlined;
  static const IconData pie =
      IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData person =
      IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData home =
      IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
