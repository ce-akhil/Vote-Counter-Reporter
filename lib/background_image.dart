import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/image/vm2.png"),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
