import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    this.login = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Pas encore de compte ?   " : "Déjà un compte ?   ",
          style: TextStyle(color: Colors.green),
        ),
        GestureDetector(
          onTap: () {
            press();
          },
          child: Text(
            login ? "S'inscrire" : "Se connecter",
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
