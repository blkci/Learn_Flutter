import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final _cardHeight = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(bottom: _cardHeight / 2, child: const RandomImage()),
                  Positioned(
                      height: _cardHeight,
                      bottom: 0,
                      width: 200,
                      child: SizedBox(
                        child: CardCustom(),
                      ))
                ],
              )),
          const Spacer(flex: 6),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Card CardCustom() {
    return const Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(),
    );
  }
}
