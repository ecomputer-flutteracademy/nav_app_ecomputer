import 'package:flutter/material.dart';

class BasicTextForm extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  final String hintText;
  final bool obscureText;
  final String title;
  const BasicTextForm({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.obscureText,
    required this.title,
    required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          controller: textEditingController,
          obscureText: obscureText,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                width: 1.0,
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                width: 1.0,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
