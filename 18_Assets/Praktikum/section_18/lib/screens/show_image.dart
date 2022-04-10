import 'package:flutter/material.dart';
import 'package:section_18/models/asset_list.dart';

class ShowImage extends StatelessWidget {
  final AssetList asset;
  const ShowImage({Key? key, required this.asset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(asset.asset), fit: BoxFit.cover))),
    );
  }
}
