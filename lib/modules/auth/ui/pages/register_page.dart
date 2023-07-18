import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.arrow_back,
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
      ),
      body: Center(
        child: Text("REGISTER PAGE"),
      ),
    );
  }
}
