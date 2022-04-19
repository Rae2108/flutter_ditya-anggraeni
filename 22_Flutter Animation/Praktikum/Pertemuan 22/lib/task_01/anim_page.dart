import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  bool isBig = false;
  String imgSrc = 'https://picsum.photos/id/1022/367/267';
  String imgSrc1 = 'https://picsum.photos/id/1023/367/267';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => setState(() {
          isBig = !isBig;
        }),
        child: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              AnimatedContainer(
                    width: isBig ? 0 : 300,
                    height: isBig ? 0 : 300,
                    duration: const Duration(milliseconds: 1000),
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 5,
                      child: Image.network(
                        imgSrc1,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
              AnimatedContainer(
                    width: isBig ? 300 : 0,
                    height: isBig ? 300 : 0,
                    duration: const Duration(milliseconds: 1000),
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 5,
                      child: Image.network(
                        imgSrc,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
