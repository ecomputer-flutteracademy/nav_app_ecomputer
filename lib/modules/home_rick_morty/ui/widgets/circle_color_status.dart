import 'package:flutter/material.dart';

class CircleColorStatus extends StatelessWidget {
  final String status;
  const CircleColorStatus({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case "Alive":
        return const CircleAvatar(
          backgroundColor: Colors.green,
          radius: 5,
        );
      case "Dead":
        return const CircleAvatar(
          backgroundColor: Colors.red,
          radius: 5,
        );

      default:
        return Container();
    }
  }
}
