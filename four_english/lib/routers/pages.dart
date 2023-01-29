import 'package:four_english/routers/routers.dart';
import 'package:four_english/views/menu_view.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';


class CommonPage {
  static List pages = [
    RouteModel(
      RouteNames.GRAMMAR_MENU,
      const MenuView(),
    ),
  ];
}

class RouteModel {
  String name;
  Widget page;

  RouteModel(this.name, this.page);
}

class Pages {
  static List<GetPage> pages() {
    return [
      GetPage(
        name: RouteNames.GRAMMAR_MENU,
        page: () => const MenuView(),
        // binding: HomeBinding(),
      ),
    ];
  }
}