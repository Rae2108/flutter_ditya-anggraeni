/// Flutter code sample for showModalBottomSheet

// This example demonstrates how to use `showModalBottomSheet` to display a
// bottom sheet that obscures the content behind it when a user taps a button.
// It also demonstrates how to close the bottom sheet using the [Navigator]
// when a user taps on a button inside the bottom sheet.

import 'package:flutter/material.dart';
import 'image.dart';
void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String img1 = 'https://cdn.pixabay.com/photo/2019/11/10/17/36/indonesia-4616370_1280.jpg';
    String img2 ='https://4.bp.blogspot.com/-S6BrsiKQFmg/WQKM30bB9GI/AAAAAAAACuA/s7tpm8iZRD0gzvMnYu-fWxZaFFPWtrAPACLcB/s1600/gambar-mewarnai-kelinci.png';
    String img3 = 'https://moondoggiesmusic.com/wp-content/uploads/2020/03/Menggambar-Doraemon.jpg';
    return Row(
      children: [
      Container(
        margin: EdgeInsets.all(8.0),
        child: 
        Center(
          child: 
          ElevatedButton(
            child: Image.network(img1, width: 100.0, height: 100.0, fit:BoxFit.cover,),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (context)=> ImageClass(img1),
              );
            },
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(8.0),
        child: 
        Center(
          child: 
          ElevatedButton(
            child: Image.network(img2, width: 100.0, height: 100.0, fit:BoxFit.cover,),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (context)=> ImageClass(img2),
              );
            },
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.all(8.0),
        child: 
        Center(
          child: 
          ElevatedButton(
            child: Image.network(img3, width: 125.0, height: 155.0, fit:BoxFit.cover,),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (context)=> ImageClass(img3),
              );
            },
          ),
        ),
      ),
      ],
    );
  }
}
