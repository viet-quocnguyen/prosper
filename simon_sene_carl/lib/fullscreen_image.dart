import 'package:flutter/material.dart';

class FullScreenImagePage extends StatelessWidget {
  String imgPath;
  FullScreenImagePage(this.imgPath);

  final LinearGradient backgroundGradient = new LinearGradient(
      colors: [new Color(0x10000000), new Color(0x30000000)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SizedBox.expand(
        child: new Container(
          decoration: new BoxDecoration(gradient: backgroundGradient),
          child: new Align(
                alignment: Alignment.center,
                child: new Hero(
                  tag: imgPath,
                  child: new Image.network(imgPath),
                ),
              ),
        ),
      ),
    );
  }
}
