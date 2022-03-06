import 'package:flutter/material.dart';

class AmountInput extends StatefulWidget {
  AmountInput({Key? key, required Function(int) this.createTransaction})
      : super(key: key);

  Function(int) createTransaction;

  @override
  State<AmountInput> createState() => _AmountInputState();
}

class _AmountInputState extends State<AmountInput> {
  final _formKey = GlobalKey<FormState>();
  final textController = TextEditingController();

  String? textValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some amount';
    }
    return null;
  }

  void onPressAdd() {
    if (_formKey.currentState!.validate()) {
      widget.createTransaction(int.parse(textController.text));
      textController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: TextFormField(
                  controller: textController,
                  validator: textValidator,
                  decoration: const InputDecoration(
                    labelText: 'Amount',
                    hintText: '0.00',
                    prefixText: '\$',
                  ),
                  keyboardType: TextInputType.number,
                )),
            Expanded(
                child: ElevatedButton(
              child: const Icon(Icons.send),
              onPressed: () {
                onPressAdd();
              },
            )),
          ],
        ),
      ),
    );
  }
}
