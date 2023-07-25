import 'package:flutter/material.dart';

class MobileButton extends StatelessWidget {
  final String title;
  final Color colorButton;
  final void Function()? onTap;
  const MobileButton({
    Key? key,
    required this.title,
    required this.colorButton,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
