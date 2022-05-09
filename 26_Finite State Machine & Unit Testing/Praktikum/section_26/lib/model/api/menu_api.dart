import 'package:section_26/model/menu_model.dart';

import 'package:dio/dio.dart';

class MenuApi {
  Future<List<Menu>> getMenus() async {
    final response = await Dio().get(
      "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods",
    );
    List<Menu> menu = (response.data as List)
        .map((e) => Menu(id: e['id'], menu: e['name']))
        .toList();
    return menu;
  }
}
