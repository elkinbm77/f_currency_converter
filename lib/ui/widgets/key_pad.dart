import 'package:flutter/material.dart';

import 'one_key.dart';

class KeyPad extends StatefulWidget {
  const KeyPad(
      {Key? key,
      required this.textCurrency1,
      required this.textCurrency2,
      required this.rate})
      : super(key: key);

  final String textCurrency1;
  final String textCurrency2;
  final double rate;

  @override
  State<KeyPad> createState() => _KeyPadState();
}

class _KeyPadState extends State<KeyPad> {
  double _currency2 = 0;
  int _currency1 = 0;

  void _onPressed(int k) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.textCurrency1,
                key: const Key('TextCurrency1'),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  _currency1.toString(),
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 35),
                )),
          ],
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              OneKey(number: 7, callback: _onPressed),
              OneKey(number: 8, callback: _onPressed),
              OneKey(number: 9, callback: _onPressed),
            ])
      ],
    );
  }
}
