
import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  const BgImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
                  "assets/bg1.jpeg",
                  fit: BoxFit.cover,
                );
      
  
  }
}