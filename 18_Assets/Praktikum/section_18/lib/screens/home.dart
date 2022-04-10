import 'package:flutter/material.dart';
import 'package:section_18/models/asset_list.dart';
import 'package:section_18/screens/show_image.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assets"),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemCount: assetList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => ShowImage(
                        asset: assetList[index],
                      ))));
            },
            child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                margin: const EdgeInsets.all(5),
                child: Image.asset(assetList[index].asset)),
          );
        },
      ),
    );
  }
}
