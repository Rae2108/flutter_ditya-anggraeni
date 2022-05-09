import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_26/view/menu/menu_screen.dart';
import 'package:section_26/view/menu/menu_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MenuViewModel()..getAllMenus(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MenuScreen(),
      ),
    );
  }
}
