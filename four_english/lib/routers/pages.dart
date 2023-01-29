import 'package:four_english/routers/routers.dart';
import 'package:four_english/views/file_view.dart';
import 'package:four_english/views/menu_view.dart';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';


class CommonPage {
  static List pages = [
    RouteModel(
      RouteNames.GRAMMAR_MENU,
      MenuView(),
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
        page: () => MenuView(),
        // binding: HomeBinding(),
      ),
    ];
  }
}