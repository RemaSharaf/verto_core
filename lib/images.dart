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
  final String payout = _ImageProvider.svg("payout");
  final String vector = _ImageProvider.svg("Vector");
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
