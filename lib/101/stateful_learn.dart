import 'package:flutter/material.dart';
import 'package:flutter_full_learn/products/counter_button.dart';
import 'package:flutter_full_learn/products/languages/language_item.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int countValue = 0;

  void incrementValue() {
    setState(() {
      countValue += 1;
    });
  }

  void decrementValue() {
    setState(() {
      countValue -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcomeTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          increase(),
          decreaseButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            countValue.toString(),
            style: Theme.of(context).textTheme.headline2,
          )),
          const Placeholder(),
          const CounterHelloButton(),
        ],
      ),
    );
  }

  FloatingActionButton increase() {
    return FloatingActionButton(
      onPressed: () {
        incrementValue();
      },
      child: const Icon(Icons.add),
    );
  }

  Padding decreaseButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          decrementValue();
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
