import 'package:flutter/material.dart';
import '../components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.black,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Colors.black,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.black,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
