import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsRickMorty extends StatelessWidget {
  const DetailsRickMorty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
