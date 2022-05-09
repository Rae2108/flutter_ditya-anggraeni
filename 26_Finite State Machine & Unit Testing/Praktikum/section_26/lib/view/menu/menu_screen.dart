import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section_26/view/menu/menu_view_model.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    MenuViewModel menuView = Provider.of<MenuViewModel>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Menu Makanan"),
          centerTitle: true,
        ),
        body: body(menuView));
  }

  Widget listView(MenuViewModel viewMenu) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return SizedBox(
            height: 200,
            width: 200,
            child: Column(children: [
              Container(
                width: 180,
                height: 150,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 3,
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(viewMenu.gambar[index]),
                        fit: BoxFit.fill)),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(viewMenu.menus[index].menu)
            ]));
      },
      itemCount: viewMenu.menus.length,
    );
  }

  Widget body(MenuViewModel viewModel) {
    final isLoading = viewModel.state == MenuViewState.loading;
    final isError = viewModel.state == MenuViewState.error;

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (isError) {
      return const Center(
        child: Text("Gagal Mendapatkan Data"),
      );
    }
    return listView(viewModel);
  }
}
