import 'package:flutter/material.dart';
import 'package:section_26/model/api/menu_api.dart';
import 'package:section_26/model/menu_model.dart';

enum MenuViewState { none, loading, error }

class MenuViewModel extends ChangeNotifier {
  MenuViewState _state = MenuViewState.none;
  MenuViewState get state => _state;

  List<Menu> _menus = [];
  List<Menu> get menus => _menus;

  final List _gambar = [
    "https://s3.theasianparent.com/cdn-cgi/image/width=450,quality=90/tap-assets-prod/wp-content/uploads/sites/24/2020/01/bakso-halus.jpg",
    "https://awsimages.detik.net.id/community/media/visual/2019/11/08/31ccb56c-5b9d-406c-935a-07570df3cda6.jpeg?w=700&q=90",
    "https://awsimages.detik.net.id/community/media/visual/2021/09/14/fakta-menarik-nasi-kucing-2_43.jpeg?w=1200"
  ];

  List get gambar => _gambar;

  changeState(MenuViewState s) {
    _state = s;
    notifyListeners();
  }

  getAllMenus() async {
    changeState(MenuViewState.loading);

    try {
      final m = await MenuApi.getMenus();
      _menus = m;
      notifyListeners();
      changeState(MenuViewState.none);
    } catch (e) {
      changeState(MenuViewState.error);
    }
  }
}
