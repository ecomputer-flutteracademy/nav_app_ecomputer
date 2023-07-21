import 'package:flutter/material.dart';

class MobileButton extends StatelessWidget {
  final String title;
  final Color colorButton;
  const MobileButton({
    Key? key,
    required this.title,
    required this.colorButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: double.infinity,
        color: colorButton,
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
