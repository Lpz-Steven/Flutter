import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final int box;
  const MyBox({Key? key, required this.box}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
          decoration: BoxDecoration(
            image:DecorationImage(
              image: AssetImage('../images/pic${box + 1}.jpg'),
            ),
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
      ),
    );
  }
}