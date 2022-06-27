import 'package:flutter/material.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({Key? key}) : super(key: key);

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  @override
  Widget build(BuildContext context) {
    int _counterCustom = 0;
    void _updateCounter() {
      setState(() {
        _counterCustom++;
      });
    }

    final title = Text('Merhaba');
    return ElevatedButton(
        onPressed: () {
          _counterCustom;
        },
        child: Text('$title $_counterCustom'));
  }
}
