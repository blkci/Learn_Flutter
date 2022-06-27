import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
          maxLength: 20,
          buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
            return AnimatedContainer(
              key: UniqueKey(),
              duration: const Duration(milliseconds: 1000),
              color: Colors.green,
              height: 10,
              width: 10.0 * (currentLength ?? 0),
            );
          },
          decoration: const InputDecoration(
              prefixIcon: const Icon(Icons.mail), border: OutlineInputBorder(), labelText: 'Mail')),
    );
  }
}
