import 'package:flutter/material.dart';

class AmountInput extends StatefulWidget {
  const AmountInput({Key? key}) : super(key: key);

  @override
  State<AmountInput> createState() => _AmountInputState();
}

class _AmountInputState extends State<AmountInput> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Amount',
                    hintText: '0.00',
                    prefixText: '\$',
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    print(value);
                  },
                )),
            Expanded(
                child: ElevatedButton(
              child: const Icon(Icons.arrow_right),
              onPressed: () {
                print("SendMony");
              },
            )),
          ],
        ),
      ),
    );
  }
}
