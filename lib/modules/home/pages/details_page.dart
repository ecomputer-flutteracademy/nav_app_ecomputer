import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        heroTag: 'F1',
        child: const Icon(
          Icons.remove,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            // Navigator.pop(context);
            context.pop();
          },
          heroTag: 'F2',
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
