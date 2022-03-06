import 'package:flutter/material.dart';
import '../components/text_field_container.dart';

class RoundedField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const RoundedField({
    required this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
